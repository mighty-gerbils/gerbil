(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g21004_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21005_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21006_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
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
  (define |gerbil/core/sugar~Sugar-2[1]#_g21044_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21051_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21052_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21053_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21054_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21055_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21056_|
    (##structure
     gx#syntax-quote::t
     'unquote
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
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21059_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21060_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5370%_)
        (letrec ((_%simple-lambda?5373%_
                  (lambda (_%hd8779%_)
                    (gx#stx-andmap gx#identifier? _%hd8779%_)))
                 (_%opt-lambda?5375%_
                  (lambda (_%hd8631%_)
                    (let _%lp8634%_ ((_%rest8637%_ _%hd8631%_)
                                     (_%opt?8639%_ '#f))
                      (let* ((_%__stx1922819229%_ _%rest8637%_)
                             (_%g86428654%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1922819229%_))))
                        (let ((_%__kont1923119232%_
                               (lambda (_%L8686%_ _%L8688%_)
                                 (let* ((_%__stx1920419205%_ _%L8688%_)
                                        (_%g87048718%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1920419205%_))))
                                   (let ((_%__kont1920719208%_
                                          (lambda (_%L8756%_)
                                            (_%lp8634%_ _%L8686%_ '#t)))
                                         (_%__kont1920919210%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8688%_)
                                                (if (not _%opt?8639%_)
                                                    (_%lp8634%_ _%L8686%_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1922519226%_
                                            (lambda (_%e87078736%_
                                                     _%hd87088740%_
                                                     _%tl87098743%_
                                                     _%e87108746%_
                                                     _%hd87118750%_
                                                     _%tl87128753%_)
                                              (let ((_%L8756%_ _%hd87088740%_))
                                                (if (gx#identifier? _%L8756%_)
                                                    (_%__kont1920719208%_
                                                     _%L8756%_)
                                                    (_%__kont1920919210%_))))))
                                       (if (gx#stx-pair? _%__stx1920419205%_)
                                           (let ((_%e87078736%_
                                                  (gx#syntax-e
                                                   _%__stx1920419205%_)))
                                             (let ((_%tl87098743%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e87078736%_)))
                                                   (_%hd87088740%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e87078736%_))))
                                               (if (gx#stx-pair?
                                                    _%tl87098743%_)
                                                   (let ((_%e87108746%_
                                                          (gx#syntax-e
                                                           _%tl87098743%_)))
                                                     (let ((_%tl87128753%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e87108746%_)))
                                                           (_%hd87118750%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e87108746%_))))
                                                       (if (gx#stx-null?
                                                            _%tl87128753%_)
                                                           (_%__match1922519226%_
                                                            _%e87078736%_
                                                            _%hd87088740%_
                                                            _%tl87098743%_
                                                            _%e87108746%_
                                                            _%hd87118750%_
                                                            _%tl87128753%_)
                                                           (_%__kont1920919210%_))))
                                                   (_%__kont1920919210%_))))
                                           (_%__kont1920919210%_)))))))
                              (_%__kont1923319234%_
                               (lambda ()
                                 (if _%opt?8639%_
                                     (let ((_%$e8665%_
                                            (gx#stx-null? _%rest8637%_)))
                                       (if _%$e8665%_
                                           _%$e8665%_
                                           (gx#identifier? _%rest8637%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1922819229%_)
                              (let ((_%e86468676%_
                                     (gx#syntax-e _%__stx1922819229%_)))
                                (let ((_%tl86488683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86468676%_)))
                                      (_%hd86478680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86468676%_))))
                                  (_%__kont1923119232%_
                                   _%tl86488683%_
                                   _%hd86478680%_)))
                              (_%__kont1923319234%_)))))))
                 (_%opt-lambda-split5376%_
                  (lambda (_%hd8483%_)
                    (let _%lp8486%_ ((_%rest8489%_ _%hd8483%_)
                                     (_%pre8491%_ '())
                                     (_%opt8492%_ '()))
                      (let* ((_%__stx1926819269%_ _%rest8489%_)
                             (_%g84958507%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1926819269%_))))
                        (let ((_%__kont1927119272%_
                               (lambda (_%L8535%_ _%L8537%_)
                                 (let* ((_%__stx1924419245%_ _%L8537%_)
                                        (_%g85538568%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1924419245%_))))
                                   (let ((_%__kont1924719248%_
                                          (lambda (_%L8606%_ _%L8608%_)
                                            (_%lp8486%_
                                             _%L8535%_
                                             _%pre8491%_
                                             (cons (cons _%L8608%_ _%L8606%_)
                                                   _%opt8492%_))))
                                         (_%__kont1924919250%_
                                          (lambda ()
                                            (_%lp8486%_
                                             _%L8535%_
                                             (cons _%L8537%_ _%pre8491%_)
                                             _%opt8492%_))))
                                     (if (gx#stx-pair? _%__stx1924419245%_)
                                         (let ((_%e85578586%_
                                                (gx#syntax-e
                                                 _%__stx1924419245%_)))
                                           (let ((_%tl85598593%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e85578586%_)))
                                                 (_%hd85588590%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e85578586%_))))
                                             (if (gx#stx-pair? _%tl85598593%_)
                                                 (let ((_%e85608596%_
                                                        (gx#syntax-e
                                                         _%tl85598593%_)))
                                                   (let ((_%tl85628603%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e85608596%_)))
                                                         (_%hd85618600%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e85608596%_))))
                                                     (if (gx#stx-null?
                                                          _%tl85628603%_)
                                                         (_%__kont1924719248%_
                                                          _%hd85618600%_
                                                          _%hd85588590%_)
                                                         (_%__kont1924919250%_))))
                                                 (_%__kont1924919250%_))))
                                         (_%__kont1924919250%_))))))
                              (_%__kont1927319274%_
                               (lambda ()
                                 (values (reverse _%pre8491%_)
                                         (reverse _%opt8492%_)
                                         _%rest8489%_))))
                          (if (gx#stx-pair? _%__stx1926819269%_)
                              (let ((_%e84998525%_
                                     (gx#syntax-e _%__stx1926819269%_)))
                                (let ((_%tl85018532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e84998525%_)))
                                      (_%hd85008529%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e84998525%_))))
                                  (_%__kont1927119272%_
                                   _%tl85018532%_
                                   _%hd85008529%_)))
                              (_%__kont1927319274%_)))))))
                 (_%kw-lambda?5377%_
                  (lambda (_%hd8151%_)
                    (let _%lp8154%_ ((_%rest8157%_ _%hd8151%_)
                                     (_%opt?8159%_ '#f)
                                     (_%key?8160%_ '#f))
                      (let* ((_%__stx1933219333%_ _%rest8157%_)
                             (_%g81658195%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1933219333%_))))
                        (let ((_%__kont1933519336%_
                               (lambda (_%L8390%_ _%L8392%_ _%L8393%_)
                                 (let* ((_%__stx1930819309%_ _%L8392%_)
                                        (_%g84088422%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1930819309%_))))
                                   (let ((_%__kont1931119312%_
                                          (lambda (_%L8460%_)
                                            (if (gx#identifier? _%L8460%_)
                                                (_%lp8154%_
                                                 _%L8390%_
                                                 _%opt?8159%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1931319314%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8392%_)
                                                (_%lp8154%_
                                                 _%L8390%_
                                                 _%opt?8159%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1930819309%_)
                                         (let ((_%e84118440%_
                                                (gx#syntax-e
                                                 _%__stx1930819309%_)))
                                           (let ((_%tl84138447%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84118440%_)))
                                                 (_%hd84128444%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84118440%_))))
                                             (if (gx#stx-pair? _%tl84138447%_)
                                                 (let ((_%e84148450%_
                                                        (gx#syntax-e
                                                         _%tl84138447%_)))
                                                   (let ((_%tl84168457%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84148450%_)))
                                                         (_%hd84158454%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84148450%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84168457%_)
                                                         (_%__kont1931119312%_
                                                          _%hd84128444%_)
                                                         (_%__kont1931319314%_))))
                                                 (_%__kont1931319314%_))))
                                         (_%__kont1931319314%_))))))
                              (_%__kont1933719338%_
                               (lambda (_%L8347%_ _%L8349%_)
                                 (if (gx#identifier? _%L8349%_)
                                     (_%lp8154%_ _%L8347%_ _%opt?8159%_ '#t)
                                     '#f)))
                              (_%__kont1933919340%_
                               (lambda (_%L8227%_ _%L8229%_)
                                 (let* ((_%__stx1928419285%_ _%L8229%_)
                                        (_%g82458259%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1928419285%_))))
                                   (let ((_%__kont1928719288%_
                                          (lambda (_%L8297%_)
                                            (if (gx#identifier? _%L8297%_)
                                                (_%lp8154%_
                                                 _%L8227%_
                                                 '#t
                                                 _%key?8160%_)
                                                '#f)))
                                         (_%__kont1928919290%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8229%_)
                                                (if (not _%opt?8159%_)
                                                    (_%lp8154%_
                                                     _%L8227%_
                                                     '#f
                                                     _%key?8160%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1928419285%_)
                                         (let ((_%e82488277%_
                                                (gx#syntax-e
                                                 _%__stx1928419285%_)))
                                           (let ((_%tl82508284%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e82488277%_)))
                                                 (_%hd82498281%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e82488277%_))))
                                             (if (gx#stx-pair? _%tl82508284%_)
                                                 (let ((_%e82518287%_
                                                        (gx#syntax-e
                                                         _%tl82508284%_)))
                                                   (let ((_%tl82538294%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e82518287%_)))
                                                         (_%hd82528291%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e82518287%_))))
                                                     (if (gx#stx-null?
                                                          _%tl82538294%_)
                                                         (_%__kont1928719288%_
                                                          _%hd82498281%_)
                                                         (_%__kont1928919290%_))))
                                                 (_%__kont1928919290%_))))
                                         (_%__kont1928919290%_))))))
                              (_%__kont1934119342%_
                               (lambda ()
                                 (if _%key?8160%_
                                     (let ((_%$e8206%_
                                            (gx#stx-null? _%rest8157%_)))
                                       (if _%$e8206%_
                                           _%$e8206%_
                                           (gx#identifier? _%rest8157%_)))
                                     '#f))))
                          (let ((_%__match1935519356%_
                                 (lambda (_%e81708370%_
                                          _%hd81718374%_
                                          _%tl81728377%_
                                          _%e81738380%_
                                          _%hd81748384%_
                                          _%tl81758387%_)
                                   (let ((_%L8390%_ _%tl81758387%_)
                                         (_%L8392%_ _%hd81748384%_)
                                         (_%L8393%_ _%hd81718374%_))
                                     (if (gx#stx-keyword? _%L8393%_)
                                         (_%__kont1933519336%_
                                          _%L8390%_
                                          _%L8392%_
                                          _%L8393%_)
                                         (if (gx#stx-datum? _%hd81718374%_)
                                             (let ((_%e81818333%_
                                                    (gx#stx-e _%hd81718374%_)))
                                               (if (equal? _%e81818333%_
                                                           '#!key)
                                                   (_%__kont1933719338%_
                                                    _%tl81758387%_
                                                    _%hd81748384%_)
                                                   (_%__kont1933919340%_
                                                    _%tl81728377%_
                                                    _%hd81718374%_)))
                                             (_%__kont1933919340%_
                                              _%tl81728377%_
                                              _%hd81718374%_)))))))
                            (if (gx#stx-pair? _%__stx1933219333%_)
                                (let ((_%e81708370%_
                                       (gx#syntax-e _%__stx1933219333%_)))
                                  (let ((_%tl81728377%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e81708370%_)))
                                        (_%hd81718374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e81708370%_))))
                                    (if (gx#stx-pair? _%tl81728377%_)
                                        (let ((_%e81738380%_
                                               (gx#syntax-e _%tl81728377%_)))
                                          (let ((_%tl81758387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e81738380%_)))
                                                (_%hd81748384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e81738380%_))))
                                            (_%__match1935519356%_
                                             _%e81708370%_
                                             _%hd81718374%_
                                             _%tl81728377%_
                                             _%e81738380%_
                                             _%hd81748384%_
                                             _%tl81758387%_)))
                                        (if (gx#stx-datum? _%hd81718374%_)
                                            (let ((_%e81818333%_
                                                   (gx#stx-e _%hd81718374%_)))
                                              (_%__kont1933919340%_
                                               _%tl81728377%_
                                               _%hd81718374%_))
                                            (_%__kont1933919340%_
                                             _%tl81728377%_
                                             _%hd81718374%_)))))
                                (_%__kont1934119342%_))))))))
                 (_%kw-lambda-split5378%_
                  (lambda (_%hd7884%_)
                    (let _%lp7887%_ ((_%rest7890%_ _%hd7884%_)
                                     (_%kwvar7892%_ '#f)
                                     (_%kwargs7893%_ '())
                                     (_%args7894%_ '()))
                      (let* ((_%__stx1940619407%_ _%rest7890%_)
                             (_%g78997929%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1940619407%_))))
                        (let ((_%__kont1940919410%_
                               (lambda (_%L8048%_ _%L8050%_ _%L8051%_)
                                 (let ((_%key8065%_ (gx#stx-e _%L8051%_)))
                                   (if (find (lambda (_%kwarg8068%_)
                                               (eq? _%key8065%_
                                                    (car _%kwarg8068%_)))
                                             _%kwargs7893%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5370%_
                                        _%hd7884%_
                                        _%key8065%_)
                                       (let* ((_%__stx1938219383%_ _%L8050%_)
                                              (_%g80728087%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1938219383%_))))
                                         (let ((_%__kont1938519386%_
                                                (lambda (_%L8125%_ _%L8127%_)
                                                  (_%lp7887%_
                                                   _%L8048%_
                                                   _%kwvar7892%_
                                                   (cons (list _%key8065%_
                                                               _%L8127%_
                                                               _%L8125%_)
                                                         _%kwargs7893%_)
                                                   _%args7894%_)))
                                               (_%__kont1938719388%_
                                                (lambda ()
                                                  (_%lp7887%_
                                                   _%L8048%_
                                                   _%kwvar7892%_
                                                   (cons (list _%key8065%_
                                                               _%L8050%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%L8051%_ '()))))
                 _%kwargs7893%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7894%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1938219383%_)
                                               (let ((_%e80768105%_
                                                      (gx#syntax-e
                                                       _%__stx1938219383%_)))
                                                 (let ((_%tl80788112%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e80768105%_)))
                                                       (_%hd80778109%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e80768105%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl80788112%_)
                                                       (let ((_%e80798115%_
                                                              (gx#syntax-e
                                                               _%tl80788112%_)))
                                                         (let ((_%tl80818122%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e80798115%_)))
                       (_%hd80808119%_
                        (let () (declare (not safe)) (##car _%e80798115%_))))
                   (if (gx#stx-null? _%tl80818122%_)
                       (_%__kont1938519386%_ _%hd80808119%_ _%hd80778109%_)
                       (_%__kont1938719388%_))))
               (_%__kont1938719388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1938719388%_))))))))
                              (_%__kont1941119412%_
                               (lambda (_%L8005%_ _%L8007%_)
                                 (if _%kwvar7892%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5370%_
                                      _%hd7884%_
                                      _%L8007%_)
                                     (_%lp7887%_
                                      _%L8005%_
                                      _%L8007%_
                                      _%kwargs7893%_
                                      _%args7894%_))))
                              (_%__kont1941319414%_
                               (lambda (_%L7957%_ _%L7959%_)
                                 (_%lp7887%_
                                  _%L7957%_
                                  _%kwvar7892%_
                                  _%kwargs7893%_
                                  (cons _%L7959%_ _%args7894%_))))
                              (_%__kont1941519416%_
                               (lambda ()
                                 (values _%kwvar7892%_
                                         (reverse _%kwargs7893%_)
                                         (foldl cons
                                                _%rest7890%_
                                                _%args7894%_)))))
                          (let ((_%__match1942919430%_
                                 (lambda (_%e79048028%_
                                          _%hd79058032%_
                                          _%tl79068035%_
                                          _%e79078038%_
                                          _%hd79088042%_
                                          _%tl79098045%_)
                                   (let ((_%L8048%_ _%tl79098045%_)
                                         (_%L8050%_ _%hd79088042%_)
                                         (_%L8051%_ _%hd79058032%_))
                                     (if (gx#stx-keyword? _%L8051%_)
                                         (_%__kont1940919410%_
                                          _%L8048%_
                                          _%L8050%_
                                          _%L8051%_)
                                         (if (gx#stx-datum? _%hd79058032%_)
                                             (let ((_%e79157991%_
                                                    (gx#stx-e _%hd79058032%_)))
                                               (if (equal? _%e79157991%_
                                                           '#!key)
                                                   (_%__kont1941119412%_
                                                    _%tl79098045%_
                                                    _%hd79088042%_)
                                                   (_%__kont1941319414%_
                                                    _%tl79068035%_
                                                    _%hd79058032%_)))
                                             (_%__kont1941319414%_
                                              _%tl79068035%_
                                              _%hd79058032%_)))))))
                            (if (gx#stx-pair? _%__stx1940619407%_)
                                (let ((_%e79048028%_
                                       (gx#syntax-e _%__stx1940619407%_)))
                                  (let ((_%tl79068035%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e79048028%_)))
                                        (_%hd79058032%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e79048028%_))))
                                    (if (gx#stx-pair? _%tl79068035%_)
                                        (let ((_%e79078038%_
                                               (gx#syntax-e _%tl79068035%_)))
                                          (let ((_%tl79098045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e79078038%_)))
                                                (_%hd79088042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e79078038%_))))
                                            (_%__match1942919430%_
                                             _%e79048028%_
                                             _%hd79058032%_
                                             _%tl79068035%_
                                             _%e79078038%_
                                             _%hd79088042%_
                                             _%tl79098045%_)))
                                        (if (gx#stx-datum? _%hd79058032%_)
                                            (let ((_%e79157991%_
                                                   (gx#stx-e _%hd79058032%_)))
                                              (_%__kont1941319414%_
                                               _%tl79068035%_
                                               _%hd79058032%_))
                                            (_%__kont1941319414%_
                                             _%tl79068035%_
                                             _%hd79058032%_)))))
                                (_%__kont1941519416%_))))))))
                 (_%check-duplicate-bindings5379%_
                  (lambda (_%hd7576%_)
                    (let _%lp7579%_ ((_%rest7582%_ _%hd7576%_)
                                     (_%ids7584%_ '()))
                      (let* ((_%__stx1948019481%_ _%rest7582%_)
                             (_%g75877599%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1948019481%_))))
                        (let ((_%__kont1948319484%_
                               (lambda (_%L7627%_ _%L7629%_)
                                 (if (gx#identifier? _%L7629%_)
                                     (_%lp7579%_
                                      _%L7627%_
                                      (cons _%L7629%_ _%ids7584%_))
                                     (if (gx#stx-pair? _%L7629%_)
                                         (let* ((_%g76487662%_
                                                 (lambda (_%g76497658%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g76497658%_)))
                                                (_%g76477704%_
                                                 (lambda (_%g76497666%_)
                                                   (if (gx#stx-pair?
                                                        _%g76497666%_)
                                                       (let ((_%e76517669%_
                                                              (gx#syntax-e
                                                               _%g76497666%_)))
                                                         (let ((_%hd76527673%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e76517669%_)))
                       (_%tl76537676%_
                        (let () (declare (not safe)) (##cdr _%e76517669%_))))
                   (if (gx#stx-pair? _%tl76537676%_)
                       (let ((_%e76547679%_ (gx#syntax-e _%tl76537676%_)))
                         (let ((_%hd76557683%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e76547679%_)))
                               (_%tl76567686%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e76547679%_))))
                           (if (gx#stx-null? _%tl76567686%_)
                               ((lambda (_%L7689%_)
                                  (_%lp7579%_
                                   _%L7627%_
                                   (cons _%L7689%_ _%ids7584%_)))
                                _%hd76527673%_)
                               (_%g76487662%_ _%g76497666%_))))
                       (_%g76487662%_ _%g76497666%_))))
               (_%g76487662%_ _%g76497666%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g76477704%_ _%L7629%_))
                                         (if (gx#stx-keyword? _%L7629%_)
                                             (let* ((_%g77107722%_
                                                     (lambda (_%g77117718%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g77117718%_)))
                                                    (_%g77097825%_
                                                     (lambda (_%g77117726%_)
                                                       (if (gx#stx-pair?
                                                            _%g77117726%_)
                                                           (let ((_%e77147729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g77117726%_)))
                     (let ((_%hd77157733%_
                            (let ()
                              (declare (not safe))
                              (##car _%e77147729%_)))
                           (_%tl77167736%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e77147729%_))))
                       ((lambda (_%L7739%_ _%L7741%_)
                          (let* ((_%__stx1945619457%_ _%L7741%_)
                                 (_%g77547768%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1945619457%_))))
                            (let ((_%__kont1945919460%_
                                   (lambda (_%L7806%_)
                                     (_%lp7579%_
                                      _%L7739%_
                                      (cons _%L7806%_ _%ids7584%_))))
                                  (_%__kont1946119462%_
                                   (lambda ()
                                     (_%lp7579%_
                                      _%L7739%_
                                      (cons _%L7741%_ _%ids7584%_)))))
                              (if (gx#stx-pair? _%__stx1945619457%_)
                                  (let ((_%e77577786%_
                                         (gx#syntax-e _%__stx1945619457%_)))
                                    (let ((_%tl77597793%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e77577786%_)))
                                          (_%hd77587790%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e77577786%_))))
                                      (if (gx#stx-pair? _%tl77597793%_)
                                          (let ((_%e77607796%_
                                                 (gx#syntax-e _%tl77597793%_)))
                                            (let ((_%tl77627803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e77607796%_)))
                                                  (_%hd77617800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e77607796%_))))
                                              (if (gx#stx-null? _%tl77627803%_)
                                                  (_%__kont1945919460%_
                                                   _%hd77587790%_)
                                                  (_%__kont1946119462%_))))
                                          (_%__kont1946119462%_))))
                                  (_%__kont1946119462%_)))))
                        _%tl77167736%_
                        _%hd77157733%_)))
                   (_%g77107722%_ _%g77117726%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g77097825%_ _%L7627%_))
                                             (if (eq? (gx#stx-e _%L7629%_)
                                                      '#!key)
                                                 (let* ((_%g78317843%_
                                                         (lambda (_%g78327839%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g78327839%_)))
                                                        (_%g78307874%_
                                                         (lambda (_%g78327847%_)
                                                           (if (gx#stx-pair?
                                                                _%g78327847%_)
                                                               (let ((_%e78357850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g78327847%_)))
                         (let ((_%hd78367854%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e78357850%_)))
                               (_%tl78377857%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e78357850%_))))
                           ((lambda (_%L7860%_ _%L7862%_)
                              (_%lp7579%_
                               _%L7860%_
                               (cons _%L7862%_ _%ids7584%_)))
                            _%tl78377857%_
                            _%hd78367854%_)))
                       (_%g78317843%_ _%g78327847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g78307874%_ _%L7627%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5370%_
                                                        _%rest7582%_)))))))
                              (_%__kont1948519486%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7582%_)
                                      _%ids7584%_
                                      (cons _%rest7582%_ _%ids7584%_))
                                  _%stx5370%_))))
                          (if (gx#stx-pair? _%__stx1948019481%_)
                              (let ((_%e75917617%_
                                     (gx#syntax-e _%__stx1948019481%_)))
                                (let ((_%tl75937624%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e75917617%_)))
                                      (_%hd75927621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e75917617%_))))
                                  (_%__kont1948319484%_
                                   _%tl75937624%_
                                   _%hd75927621%_)))
                              (_%__kont1948519486%_)))))))
                 (_%generate-opt-primary5380%_
                  (lambda (_%pre7368%_ _%opt7370%_ _%tail7371%_ _%body7372%_)
                    (let* ((_%g73747415%_
                            (lambda (_%g73757411%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g73757411%_)))
                           (_%g73737572%_
                            (lambda (_%g73757419%_)
                              (if (gx#stx-pair? _%g73757419%_)
                                  (let ((_%e73807422%_
                                         (gx#syntax-e _%g73757419%_)))
                                    (let ((_%hd73817426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73807422%_)))
                                          (_%tl73827429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73807422%_))))
                                      (if (gx#stx-pair/null? _%hd73817426%_)
                                          (let ((_g20969_
                                                 (gx#syntax-split-splice
                                                  _%hd73817426%_
                                                  '0)))
                                            (begin
                                              (let ((_g20970_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20969_)
                                                           (##vector-length
                                                            _g20969_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20970_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20970_)))
                                              (let ((_%target73837432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20969_
                                                        0)))
                                                    (_%tl73857435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20969_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73857435%_)
                                                    (letrec ((_%loop73867438%_
                                                              (lambda (_%hd73847442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre73907445%_)
                        (if (gx#stx-pair? _%hd73847442%_)
                            (let ((_%e73877448%_ (gx#syntax-e _%hd73847442%_)))
                              (let ((_%lp-hd73887452%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73877448%_)))
                                    (_%lp-tl73897455%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73877448%_))))
                                (_%loop73867438%_
                                 _%lp-tl73897455%_
                                 (cons _%lp-hd73887452%_ _%pre73907445%_))))
                            (let ((_%pre73917458%_ (reverse _%pre73907445%_)))
                              (if (gx#stx-pair? _%tl73827429%_)
                                  (let ((_%e73927462%_
                                         (gx#syntax-e _%tl73827429%_)))
                                    (let ((_%hd73937466%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73927462%_)))
                                          (_%tl73947469%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73927462%_))))
                                      (if (gx#stx-pair/null? _%hd73937466%_)
                                          (let ((_g20971_
                                                 (gx#syntax-split-splice
                                                  _%hd73937466%_
                                                  '0)))
                                            (begin
                                              (let ((_g20972_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20971_)
                                                           (##vector-length
                                                            _g20971_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20972_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20972_)))
                                              (let ((_%target73957472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20971_
                                                        0)))
                                                    (_%tl73977475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20971_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73977475%_)
                                                    (letrec ((_%loop73987478%_
                                                              (lambda (_%hd73967482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt74027485%_)
                        (if (gx#stx-pair? _%hd73967482%_)
                            (let ((_%e73997488%_ (gx#syntax-e _%hd73967482%_)))
                              (let ((_%lp-hd74007492%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73997488%_)))
                                    (_%lp-tl74017495%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73997488%_))))
                                (_%loop73987478%_
                                 _%lp-tl74017495%_
                                 (cons _%lp-hd74007492%_ _%opt74027485%_))))
                            (let ((_%opt74037498%_ (reverse _%opt74027485%_)))
                              (if (gx#stx-pair? _%tl73947469%_)
                                  (let ((_%e74047502%_
                                         (gx#syntax-e _%tl73947469%_)))
                                    (let ((_%hd74057506%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74047502%_)))
                                          (_%tl74067509%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74047502%_))))
                                      (if (gx#stx-pair? _%tl74067509%_)
                                          (let ((_%e74077512%_
                                                 (gx#syntax-e _%tl74067509%_)))
                                            (let ((_%hd74087516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e74077512%_)))
                                                  (_%tl74097519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e74077512%_))))
                                              (if (gx#stx-null? _%tl74097519%_)
                                                  ((lambda (_%L7522%_
                                                            _%L7524%_
                                                            _%L7525%_
                                                            _%L7526%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g75557560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g75567563%_)
                                  (cons _%g75557560%_ _%g75567563%_))
                                (foldr (lambda (_%g75577566%_ _%g75587569%_)
                                         (cons _%g75577566%_ _%g75587569%_))
                                       _%L7524%_
                                       _%L7525%_)
                                _%L7526%_)
                         _%L7522%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd74087516%_
                                                   _%hd74057506%_
                                                   _%opt74037498%_
                                                   _%pre73917458%_)
                                                  (_%g73747415%_
                                                   _%g73757419%_))))
                                          (_%g73747415%_ _%g73757419%_))))
                                  (_%g73747415%_ _%g73757419%_)))))))
              (_%loop73987478%_ _%target73957472%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73747415%_
                                                     _%g73757419%_)))))
                                          (_%g73747415%_ _%g73757419%_))))
                                  (_%g73747415%_ _%g73757419%_)))))))
              (_%loop73867438%_ _%target73837432%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73747415%_
                                                     _%g73757419%_)))))
                                          (_%g73747415%_ _%g73757419%_))))
                                  (_%g73747415%_ _%g73757419%_)))))
                      (_%g73737572%_
                       (list _%pre7368%_
                             (map car _%opt7370%_)
                             _%tail7371%_
                             _%body7372%_)))))
                 (_%generate-opt-dispatch5381%_
                  (lambda (_%primary7362%_
                           _%pre7364%_
                           _%opt7365%_
                           _%tail7366%_)
                    (cons (list _%pre7364%_
                                (_%generate-opt-clause5383%_
                                 _%primary7362%_
                                 _%pre7364%_
                                 _%opt7365%_))
                          (_%generate-opt-dispatch*5382%_
                           _%primary7362%_
                           _%pre7364%_
                           _%opt7365%_
                           _%tail7366%_))))
                 (_%generate-opt-dispatch*5382%_
                  (lambda (_%primary6911%_
                           _%pre6913%_
                           _%opt6914%_
                           _%tail6915%_)
                    (let _%recur6917%_ ((_%opt-rest6920%_ _%opt6914%_)
                                        (_%right6922%_ '()))
                      (if (pair? _%opt-rest6920%_)
                          (let* ((_%hd6926%_ (caar _%opt-rest6920%_))
                                 (_%rest6929%_ (cdr _%opt-rest6920%_))
                                 (_%right*6932%_
                                  (cons _%hd6926%_ _%right6922%_))
                                 (_%g69356952%_
                                  (lambda (_%g69366948%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g69366948%_)))
                                 (_%g69347136%_
                                  (lambda (_%g69366956%_)
                                    (if (gx#stx-pair/null? _%g69366956%_)
                                        (let ((_g20973_
                                               (gx#syntax-split-splice
                                                _%g69366956%_
                                                '0)))
                                          (begin
                                            (let ((_g20974_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20973_)
                                                         (##vector-length
                                                          _g20973_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20974_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20974_)))
                                            (let ((_%target69386959%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20973_
                                                      0)))
                                                  (_%tl69406962%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20973_
                                                      1))))
                                              (if (gx#stx-null? _%tl69406962%_)
                                                  (letrec ((_%loop69416965%_
                                                            (lambda (_%hd69396969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind69456972%_)
                      (if (gx#stx-pair? _%hd69396969%_)
                          (let ((_%e69426975%_ (gx#syntax-e _%hd69396969%_)))
                            (let ((_%lp-hd69436979%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e69426975%_)))
                                  (_%lp-tl69446982%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e69426975%_))))
                              (_%loop69416965%_
                               _%lp-tl69446982%_
                               (cons _%lp-hd69436979%_ _%pre-bind69456972%_))))
                          (let ((_%pre-bind69466985%_
                                 (reverse _%pre-bind69456972%_)))
                            ((lambda (_%L6989%_)
                               (let* ((_%g70117028%_
                                       (lambda (_%g70127024%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g70127024%_)))
                                      (_%g70107132%_
                                       (lambda (_%g70127032%_)
                                         (if (gx#stx-pair/null? _%g70127032%_)
                                             (let ((_g20975_
                                                    (gx#syntax-split-splice
                                                     _%g70127032%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20976_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20975_)
                                                              (##vector-length
                                                               _g20975_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20976_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target70147035%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20975_
                                                           0)))
                                                       (_%tl70167038%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20975_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl70167038%_)
                                                       (letrec ((_%loop70177041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd70157045%_ _%opt-bind70217048%_)
                           (if (gx#stx-pair? _%hd70157045%_)
                               (let ((_%e70187051%_
                                      (gx#syntax-e _%hd70157045%_)))
                                 (let ((_%lp-hd70197055%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e70187051%_)))
                                       (_%lp-tl70207058%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e70187051%_))))
                                   (_%loop70177041%_
                                    _%lp-tl70207058%_
                                    (cons _%lp-hd70197055%_
                                          _%opt-bind70217048%_))))
                               (let ((_%opt-bind70227061%_
                                      (reverse _%opt-bind70217048%_)))
                                 ((lambda (_%L7065%_)
                                    (let* ((_%g70827090%_
                                            (lambda (_%g70837086%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g70837086%_)))
                                           (_%g70817128%_
                                            (lambda (_%g70837094%_)
                                              ((lambda (_%L7097%_)
                                                 (cons (list (foldr (lambda (_%g71117116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g71127119%_)
                              (cons _%g71117116%_ _%g71127119%_))
                            (foldr (lambda (_%g71137122%_ _%g71147125%_)
                                     (cons _%g71137122%_ _%g71147125%_))
                                   (cons _%L7097%_ '())
                                   _%L7065%_)
                            _%L6989%_)
                     (_%generate-opt-clause5383%_
                      _%primary6911%_
                      (foldr cons (reverse _%right*6932%_) _%pre6913%_)
                      _%rest6929%_))
               (_%recur6917%_ _%rest6929%_ _%right*6932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g70837094%_))))
                                      (_%g70817128%_ _%hd6926%_)))
                                  _%opt-bind70227061%_))))))
                 (_%loop70177041%_ _%target70147035%_ '()))
               (_%g70117028%_ _%g70127032%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g70117028%_ _%g70127032%_)))))
                                 (_%g70107132%_ (reverse _%right6922%_))))
                             _%pre-bind69466985%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop69416965%_
                                                     _%target69386959%_
                                                     '()))
                                                  (_%g69356952%_
                                                   _%g69366956%_)))))
                                        (_%g69356952%_ _%g69366956%_)))))
                            (_%g69347136%_ _%pre6913%_))
                          (if (gx#stx-null? _%tail6915%_)
                              '()
                              (let* ((_%g71447185%_
                                      (lambda (_%g71457181%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g71457181%_)))
                                     (_%g71437358%_
                                      (lambda (_%g71457189%_)
                                        (if (gx#stx-pair? _%g71457189%_)
                                            (let ((_%e71507192%_
                                                   (gx#syntax-e
                                                    _%g71457189%_)))
                                              (let ((_%hd71517196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71507192%_)))
                                                    (_%tl71527199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71507192%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71517196%_)
                                                    (let ((_g20977_
                                                           (gx#syntax-split-splice
                                                            _%hd71517196%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20978_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20977_)
                             (##vector-length _g20977_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20978_ 2)))
                      (error "Context expects 2 values" _g20978_)))
                (let ((_%target71537202%_
                       (let () (declare (not safe)) (##vector-ref _g20977_ 0)))
                      (_%tl71557205%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20977_ 1))))
                  (if (gx#stx-null? _%tl71557205%_)
                      (letrec ((_%loop71567208%_
                                (lambda (_%hd71547212%_ _%pre71607215%_)
                                  (if (gx#stx-pair? _%hd71547212%_)
                                      (let ((_%e71577218%_
                                             (gx#syntax-e _%hd71547212%_)))
                                        (let ((_%lp-hd71587222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71577218%_)))
                                              (_%lp-tl71597225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71577218%_))))
                                          (_%loop71567208%_
                                           _%lp-tl71597225%_
                                           (cons _%lp-hd71587222%_
                                                 _%pre71607215%_))))
                                      (let ((_%pre71617228%_
                                             (reverse _%pre71607215%_)))
                                        (if (gx#stx-pair? _%tl71527199%_)
                                            (let ((_%e71627232%_
                                                   (gx#syntax-e
                                                    _%tl71527199%_)))
                                              (let ((_%hd71637236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71627232%_)))
                                                    (_%tl71647239%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71627232%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71637236%_)
                                                    (let ((_g20979_
                                                           (gx#syntax-split-splice
                                                            _%hd71637236%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20980_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20979_)
                             (##vector-length _g20979_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20980_ 2)))
                      (error "Context expects 2 values" _g20980_)))
                (let ((_%target71657242%_
                       (let () (declare (not safe)) (##vector-ref _g20979_ 0)))
                      (_%tl71677245%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20979_ 1))))
                  (if (gx#stx-null? _%tl71677245%_)
                      (letrec ((_%loop71687248%_
                                (lambda (_%hd71667252%_ _%opt71727255%_)
                                  (if (gx#stx-pair? _%hd71667252%_)
                                      (let ((_%e71697258%_
                                             (gx#syntax-e _%hd71667252%_)))
                                        (let ((_%lp-hd71707262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71697258%_)))
                                              (_%lp-tl71717265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71697258%_))))
                                          (_%loop71687248%_
                                           _%lp-tl71717265%_
                                           (cons _%lp-hd71707262%_
                                                 _%opt71727255%_))))
                                      (let ((_%opt71737268%_
                                             (reverse _%opt71727255%_)))
                                        (if (gx#stx-pair? _%tl71647239%_)
                                            (let ((_%e71747272%_
                                                   (gx#syntax-e
                                                    _%tl71647239%_)))
                                              (let ((_%hd71757276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71747272%_)))
                                                    (_%tl71767279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71747272%_))))
                                                (if (gx#stx-pair?
                                                     _%tl71767279%_)
                                                    (let ((_%e71777282%_
                                                           (gx#syntax-e
                                                            _%tl71767279%_)))
                                                      (let ((_%hd71787286%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e71777282%_)))
                    (_%tl71797289%_
                     (let () (declare (not safe)) (##cdr _%e71777282%_))))
                (if (gx#stx-null? _%tl71797289%_)
                    ((lambda (_%L7292%_ _%L7294%_ _%L7295%_ _%L7296%_)
                       (list (list (foldr (lambda (_%g73257330%_ _%g73267333%_)
                                            (cons _%g73257330%_ _%g73267333%_))
                                          (foldr (lambda (_%g73277336%_
                                                          _%g73287339%_)
                                                   (cons _%g73277336%_
                                                         _%g73287339%_))
                                                 _%L7294%_
                                                 _%L7295%_)
                                          _%L7296%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%L7292%_
                                                (foldr (lambda (_%g73417346%_
                                                                _%g73427349%_)
                                                         (cons _%g73417346%_
                                                               _%g73427349%_))
                                                       (foldr (lambda (_%g73437352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g73447355%_)
                        (cons _%g73437352%_ _%g73447355%_))
                      (cons _%L7294%_ '())
                      _%L7295%_)
               _%L7296%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5370%_)))))
                     _%hd71787286%_
                     _%hd71757276%_
                     _%opt71737268%_
                     _%pre71617228%_)
                    (_%g71447185%_ _%g71457189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71447185%_
                                                     _%g71457189%_))))
                                            (_%g71447185%_ _%g71457189%_)))))))
                        (_%loop71687248%_ _%target71657242%_ '()))
                      (_%g71447185%_ _%g71457189%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71447185%_
                                                     _%g71457189%_))))
                                            (_%g71447185%_ _%g71457189%_)))))))
                        (_%loop71567208%_ _%target71537202%_ '()))
                      (_%g71447185%_ _%g71457189%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71447185%_
                                                     _%g71457189%_))))
                                            (_%g71447185%_ _%g71457189%_)))))
                                (_%g71437358%_
                                 (list _%pre6913%_
                                       (reverse _%right6922%_)
                                       _%tail6915%_
                                       _%primary6911%_))))))))
                 (_%generate-opt-clause5383%_
                  (lambda (_%primary6609%_ _%pre6611%_ _%opt6612%_)
                    (let _%recur6614%_ ((_%opt-rest6617%_ _%opt6612%_)
                                        (_%right6619%_ '()))
                      (if (pair? _%opt-rest6617%_)
                          (let* ((_%hd6621%_ (car _%opt-rest6617%_))
                                 (_%rest6624%_ (cdr _%opt-rest6617%_))
                                 (_%g66276635%_
                                  (lambda (_%g66286631%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66286631%_)))
                                 (_%g66266724%_
                                  (lambda (_%g66286639%_)
                                    ((lambda (_%L6642%_)
                                       (let* ((_%g66586666%_
                                               (lambda (_%g66596662%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g66596662%_)))
                                              (_%g66576720%_
                                               (lambda (_%g66596670%_)
                                                 ((lambda (_%L6673%_)
                                                    (let* ((_%g66866694%_
                                                            (lambda (_%g66876690%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g66876690%_)))
                                                           (_%g66856716%_
                                                            (lambda (_%g66876698%_)
                                                              ((lambda (_%L6701%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%L6642%_ '())
                                                 (cons _%L6673%_ '()))
                                           '())
                                     (cons _%L6701%_ '()))))
                       _%g66876698%_))))
              (_%g66856716%_
               (_%recur6614%_ _%rest6624%_ (cons _%L6642%_ _%right6619%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g66596670%_))))
                                         (_%g66576720%_ (cdr _%hd6621%_))))
                                     _%g66286639%_))))
                            (_%g66266724%_ (car _%hd6621%_)))
                          (let* ((_%g67286765%_
                                  (lambda (_%g67296761%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g67296761%_)))
                                 (_%g67276907%_
                                  (lambda (_%g67296769%_)
                                    (if (gx#stx-pair? _%g67296769%_)
                                        (let ((_%e67336772%_
                                               (gx#syntax-e _%g67296769%_)))
                                          (let ((_%hd67346776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67336772%_)))
                                                (_%tl67356779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67336772%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67346776%_)
                                                (let ((_g20981_
                                                       (gx#syntax-split-splice
                                                        _%hd67346776%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20982_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20981_)
                         (##vector-length _g20981_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20982_ 2)))
                  (error "Context expects 2 values" _g20982_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67366782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20981_
                                                              0)))
                                                          (_%tl67386785%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20981_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67386785%_)
                                                          (letrec ((_%loop67396788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67376792%_ _%pre67436795%_)
                              (if (gx#stx-pair? _%hd67376792%_)
                                  (let ((_%e67406798%_
                                         (gx#syntax-e _%hd67376792%_)))
                                    (let ((_%lp-hd67416802%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67406798%_)))
                                          (_%lp-tl67426805%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67406798%_))))
                                      (_%loop67396788%_
                                       _%lp-tl67426805%_
                                       (cons _%lp-hd67416802%_
                                             _%pre67436795%_))))
                                  (let ((_%pre67446808%_
                                         (reverse _%pre67436795%_)))
                                    (if (gx#stx-pair? _%tl67356779%_)
                                        (let ((_%e67456812%_
                                               (gx#syntax-e _%tl67356779%_)))
                                          (let ((_%hd67466816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67456812%_)))
                                                (_%tl67476819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67456812%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67466816%_)
                                                (let ((_g20983_
                                                       (gx#syntax-split-splice
                                                        _%hd67466816%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20984_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20983_)
                         (##vector-length _g20983_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20984_ 2)))
                  (error "Context expects 2 values" _g20984_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67486822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20983_
                                                              0)))
                                                          (_%tl67506825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20983_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67506825%_)
                                                          (letrec ((_%loop67516828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67496832%_ _%opt67556835%_)
                              (if (gx#stx-pair? _%hd67496832%_)
                                  (let ((_%e67526838%_
                                         (gx#syntax-e _%hd67496832%_)))
                                    (let ((_%lp-hd67536842%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67526838%_)))
                                          (_%lp-tl67546845%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67526838%_))))
                                      (_%loop67516828%_
                                       _%lp-tl67546845%_
                                       (cons _%lp-hd67536842%_
                                             _%opt67556835%_))))
                                  (let ((_%opt67566848%_
                                         (reverse _%opt67556835%_)))
                                    (if (gx#stx-pair? _%tl67476819%_)
                                        (let ((_%e67576852%_
                                               (gx#syntax-e _%tl67476819%_)))
                                          (let ((_%hd67586856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67576852%_)))
                                                (_%tl67596859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67576852%_))))
                                            (if (gx#stx-null? _%tl67596859%_)
                                                ((lambda (_%L6862%_
                                                          _%L6864%_
                                                          _%L6865%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%L6862%_
                                                          (foldr (lambda (_%g68906895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g68916898%_)
                           (cons _%g68906895%_ _%g68916898%_))
                         (foldr (lambda (_%g68926901%_ _%g68936904%_)
                                  (cons _%g68926901%_ _%g68936904%_))
                                '()
                                _%L6864%_)
                         _%L6865%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5370%_)))
                                                 _%hd67586856%_
                                                 _%opt67566848%_
                                                 _%pre67446808%_)
                                                (_%g67286765%_
                                                 _%g67296769%_))))
                                        (_%g67286765%_ _%g67296769%_)))))))
                    (_%loop67516828%_ _%target67486822%_ '()))
                  (_%g67286765%_ _%g67296769%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67286765%_
                                                 _%g67296769%_))))
                                        (_%g67286765%_ _%g67296769%_)))))))
                    (_%loop67396788%_ _%target67366782%_ '()))
                  (_%g67286765%_ _%g67296769%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67286765%_
                                                 _%g67296769%_))))
                                        (_%g67286765%_ _%g67296769%_)))))
                            (_%g67276907%_
                             (list _%pre6611%_
                                   (reverse _%right6619%_)
                                   _%primary6609%_)))))))
                 (_%generate-kw-primary5384%_
                  (lambda (_%key5985%_
                           _%kwargs5987%_
                           _%args5988%_
                           _%body5989%_)
                    (letrec ((_%make-body5991%_
                              (lambda (_%kwargs6478%_ _%kwvals6480%_)
                                (if (pair? _%kwargs6478%_)
                                    (let* ((_%kwarg6482%_ (car _%kwargs6478%_))
                                           (_%var6485%_ (cadr _%kwarg6482%_))
                                           (_%default6488%_
                                            (caddr _%kwarg6482%_))
                                           (_%kwval6491%_ (car _%kwvals6480%_))
                                           (_%rest-kwargs6494%_
                                            (cdr _%kwargs6478%_))
                                           (_%rest-kwvals6497%_
                                            (cdr _%kwvals6480%_))
                                           (_%g65026525%_
                                            (lambda (_%g65036521%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g65036521%_)))
                                           (_%g65016605%_
                                            (lambda (_%g65036529%_)
                                              (if (gx#stx-pair? _%g65036529%_)
                                                  (let ((_%e65086532%_
                                                         (gx#syntax-e
                                                          _%g65036529%_)))
                                                    (let ((_%hd65096536%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e65086532%_)))
                                                          (_%tl65106539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e65086532%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl65106539%_)
                                                          (let ((_%e65116542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl65106539%_)))
                    (let ((_%hd65126546%_
                           (let () (declare (not safe)) (##car _%e65116542%_)))
                          (_%tl65136549%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e65116542%_))))
                      (if (gx#stx-pair? _%tl65136549%_)
                          (let ((_%e65146552%_ (gx#syntax-e _%tl65136549%_)))
                            (let ((_%hd65156556%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e65146552%_)))
                                  (_%tl65166559%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e65146552%_))))
                              (if (gx#stx-pair? _%tl65166559%_)
                                  (let ((_%e65176562%_
                                         (gx#syntax-e _%tl65166559%_)))
                                    (let ((_%hd65186566%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e65176562%_)))
                                          (_%tl65196569%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e65176562%_))))
                                      (if (gx#stx-null? _%tl65196569%_)
                                          ((lambda (_%L6572%_
                                                    _%L6574%_
                                                    _%L6575%_
                                                    _%L6576%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%L6576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%L6575%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L6574%_
                                                     (cons _%L6575%_ '()))))
                                   '()))
                       '())
                 (cons _%L6572%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd65186566%_
                                           _%hd65156556%_
                                           _%hd65126546%_
                                           _%hd65096536%_)
                                          (_%g65026525%_ _%g65036529%_))))
                                  (_%g65026525%_ _%g65036529%_))))
                          (_%g65026525%_ _%g65036529%_))))
                  (_%g65026525%_ _%g65036529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g65026525%_
                                                   _%g65036529%_)))))
                                      (_%g65016605%_
                                       (list _%var6485%_
                                             _%kwval6491%_
                                             _%default6488%_
                                             (_%make-body5991%_
                                              _%rest-kwargs6494%_
                                              _%rest-kwvals6497%_))))
                                    (cons 'begin _%body5989%_))))
                             (_%make-main5993%_
                              (lambda ()
                                (let* ((_%g62866294%_
                                        (lambda (_%g62876290%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g62876290%_)))
                                       (_%g62856470%_
                                        (lambda (_%g62876298%_)
                                          ((lambda (_%L6301%_)
                                             (let* ((_%g63136330%_
                                                     (lambda (_%g63146326%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g63146326%_)))
                                                    (_%g63126466%_
                                                     (lambda (_%g63146334%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g63146334%_)
                                                           (let ((_g20985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g63146334%_ '0)))
                     (begin
                       (let ((_g20986_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20985_)
                                    (##vector-length _g20985_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20986_ 2)))
                             (error "Context expects 2 values" _g20986_)))
                       (let ((_%target63166337%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20985_ 0)))
                             (_%tl63186340%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20985_ 1))))
                         (if (gx#stx-null? _%tl63186340%_)
                             (letrec ((_%loop63196343%_
                                       (lambda (_%hd63176347%_
                                                _%kwval63236350%_)
                                         (if (gx#stx-pair? _%hd63176347%_)
                                             (let ((_%e63206353%_
                                                    (gx#syntax-e
                                                     _%hd63176347%_)))
                                               (let ((_%lp-hd63216357%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e63206353%_)))
                                                     (_%lp-tl63226360%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e63206353%_))))
                                                 (_%loop63196343%_
                                                  _%lp-tl63226360%_
                                                  (cons _%lp-hd63216357%_
                                                        _%kwval63236350%_))))
                                             (let ((_%kwval63246363%_
                                                    (reverse _%kwval63236350%_)))
                                               ((lambda (_%L6367%_)
                                                  (let* ((_%g63846392%_
                                                          (lambda (_%g63856388%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g63856388%_)))
                                                         (_%g63836462%_
                                                          (lambda (_%g63856396%_)
                                                            ((lambda (_%L6399%_)
                                                               (let* ((_%g64126420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g64136416%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g64136416%_)))
                              (_%g64116450%_
                               (lambda (_%g64136424%_)
                                 ((lambda (_%L6427%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%L6301%_
                                                       (foldr (lambda (_%g64416444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g64426447%_)
                        (cons _%g64416444%_ _%g64426447%_))
                      _%L6399%_
                      _%L6367%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L6427%_ '())))
                                     (gx#stx-source _%stx5370%_)))
                                  _%g64136424%_))))
                         (_%g64116450%_
                          (_%make-body5991%_
                           _%kwargs5987%_
                           (foldr (lambda (_%g64536456%_ _%g64546459%_)
                                    (cons _%g64536456%_ _%g64546459%_))
                                  '()
                                  _%L6367%_)))))
                     _%g63856396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g63836462%_
                                                     _%args5988%_)))
                                                _%kwval63246363%_))))))
                               (_%loop63196343%_ _%target63166337%_ '()))
                             (_%g63136330%_ _%g63146334%_)))))
                   (_%g63136330%_ _%g63146334%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g63126466%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs5987%_)))))
                                           _%g62876298%_))))
                                  (_%g62856470%_
                                   (let ((_%$e6474%_ _%key5985%_))
                                     (if _%$e6474%_
                                         _%$e6474%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch5994%_
                              (lambda (_%main6094%_)
                                (let* ((_%g60976105%_
                                        (lambda (_%g60986101%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g60986101%_)))
                                       (_%g60966276%_
                                        (lambda (_%g60986109%_)
                                          ((lambda (_%L6112%_)
                                             (let* ((_%g61246141%_
                                                     (lambda (_%g61256137%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g61256137%_)))
                                                    (_%g61236237%_
                                                     (lambda (_%g61256145%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g61256145%_)
                                                           (let ((_g20987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g61256145%_ '0)))
                     (begin
                       (let ((_g20988_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20987_)
                                    (##vector-length _g20987_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20988_ 2)))
                             (error "Context expects 2 values" _g20988_)))
                       (let ((_%target61276148%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20987_ 0)))
                             (_%tl61296151%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20987_ 1))))
                         (if (gx#stx-null? _%tl61296151%_)
                             (letrec ((_%loop61306154%_
                                       (lambda (_%hd61286158%_
                                                _%get-kw61346161%_)
                                         (if (gx#stx-pair? _%hd61286158%_)
                                             (let ((_%e61316164%_
                                                    (gx#syntax-e
                                                     _%hd61286158%_)))
                                               (let ((_%lp-hd61326168%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e61316164%_)))
                                                     (_%lp-tl61336171%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e61316164%_))))
                                                 (_%loop61306154%_
                                                  _%lp-tl61336171%_
                                                  (cons _%lp-hd61326168%_
                                                        _%get-kw61346161%_))))
                                             (let ((_%get-kw61356174%_
                                                    (reverse _%get-kw61346161%_)))
                                               ((lambda (_%L6178%_)
                                                  (let* ((_%g61956203%_
                                                          (lambda (_%g61966199%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g61966199%_)))
                                                         (_%g61946233%_
                                                          (lambda (_%g61966207%_)
                                                            ((lambda (_%L6210%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%L6112%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%L6210%_
                                                      (cons _%L6112%_
                                                            (foldr (lambda (_%g62246227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g62256230%_)
                             (cons _%g62246227%_ _%g62256230%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%L6178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5370%_)))
                     _%g61966207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g61946233%_
                                                     _%main6094%_)))
                                                _%get-kw61356174%_))))))
                               (_%loop61306154%_ _%target61276148%_ '()))
                             (_%g61246141%_ _%g61256145%_)))))
                   (_%g61246141%_ _%g61256145%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g61236237%_
                                                (map (lambda (_%kwarg6241%_)
                                                       (let* ((_%g62446252%_
                                                               (lambda (_%g62456248%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g62456248%_)))
                      (_%g62436272%_
                       (lambda (_%g62456256%_)
                         ((lambda (_%L6259%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%L6112%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%L6259%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g62456256%_))))
                 (_%g62436272%_ (car _%kwarg6241%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs5987%_))))
                                           _%g60986109%_))))
                                  (_%g60966276%_
                                   (let ((_%$e6280%_ _%key5985%_))
                                     (if _%$e6280%_
                                         _%$e6280%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g59966004%_
                              (lambda (_%g59976000%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g59976000%_)))
                             (_%g59956090%_
                              (lambda (_%g59976008%_)
                                ((lambda (_%L6011%_)
                                   (let* ((_%g60246032%_
                                           (lambda (_%g60256028%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g60256028%_)))
                                          (_%g60236086%_
                                           (lambda (_%g60256036%_)
                                             ((lambda (_%L6039%_)
                                                (let* ((_%g60526060%_
                                                        (lambda (_%g60536056%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g60536056%_)))
                                                       (_%g60516082%_
                                                        (lambda (_%g60536064%_)
                                                          ((lambda (_%L6067%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%L6011%_ '())
                                             (cons _%L6067%_ '()))
                                       '())
                                 (cons _%L6039%_ '()))))
                   _%g60536064%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g60516082%_
                                                   (_%make-main5993%_))))
                                              _%g60256036%_))))
                                     (_%g60236086%_
                                      (_%make-dispatch5994%_ _%L6011%_))))
                                 _%g59976008%_))))
                        (_%g59956090%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5385%_
                  (lambda (_%primary5898%_ _%kwargs5900%_ _%strict?5901%_)
                    (let* ((_%g59035922%_
                            (lambda (_%g59045918%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g59045918%_)))
                           (_%g59025981%_
                            (lambda (_%g59045926%_)
                              (if (gx#stx-pair? _%g59045926%_)
                                  (let ((_%e59085929%_
                                         (gx#syntax-e _%g59045926%_)))
                                    (let ((_%hd59095933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e59085929%_)))
                                          (_%tl59105936%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e59085929%_))))
                                      (if (gx#stx-pair? _%tl59105936%_)
                                          (let ((_%e59115939%_
                                                 (gx#syntax-e _%tl59105936%_)))
                                            (let ((_%hd59125943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e59115939%_)))
                                                  (_%tl59135946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e59115939%_))))
                                              (if (gx#stx-pair? _%tl59135946%_)
                                                  (let ((_%e59145949%_
                                                         (gx#syntax-e
                                                          _%tl59135946%_)))
                                                    (let ((_%hd59155953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e59145949%_)))
                                                          (_%tl59165956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e59145949%_))))
                                                      (if (gx#stx-null?
                                                           _%tl59165956%_)
                                                          ((lambda (_%L5959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L5961%_
                            _%L5962%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5959%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%L5962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L5961%_ (cons _%L5959%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd59155953%_
                   _%hd59125943%_
                   _%hd59095933%_)
                  (_%g59035922%_ _%g59045926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59035922%_
                                                   _%g59045926%_))))
                                          (_%g59035922%_ _%g59045926%_))))
                                  (_%g59035922%_ _%g59045926%_)))))
                      (_%g59025981%_
                       (list (if _%strict?5901%_
                                 (_%generate-kw-table5386%_
                                  (map car _%kwargs5900%_))
                                 '#f)
                             _%primary5898%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5386%_
                  (lambda (_%kws5872%_)
                    (let _%rehash5875%_ ((_%pht5878%_
                                          (let ((__tmp20993
                                                 (length _%kws5872%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20993 '#f))))
                      (let _%lp5881%_ ((_%rest5884%_ _%kws5872%_))
                        (if (pair? _%rest5884%_)
                            (let* ((_%key5887%_ (car _%rest5884%_))
                                   (_%rest5890%_ (cdr _%rest5884%_))
                                   (_%pos5893%_
                                    (let ((__tmp20990
                                           (keyword-hash _%key5887%_))
                                          (__tmp20989
                                           (vector-length _%pht5878%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20990 __tmp20989))))
                              (if (vector-ref _%pht5878%_ _%pos5893%_)
                                  (if (let ((__tmp20991
                                             (vector-length _%pht5878%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20991 '8192))
                                      (_%rehash5875%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20992
                                                (vector-length _%pht5878%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20992))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5872%_))
                                  (begin
                                    (vector-set!
                                     _%pht5878%_
                                     _%pos5893%_
                                     _%key5887%_)
                                    (_%lp5881%_ _%rest5890%_))))
                            _%pht5878%_))))))
          (let* ((_%__stx1949619497%_ _%stx5370%_)
                 (_%g53905421%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1949619497%_))))
            (let ((_%__kont1949919500%_
                   (lambda (_%L5853%_ _%L5855%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5855%_ _%L5853%_))))
                  (_%__kont1950119502%_
                   (lambda (_%L5625%_ _%L5627%_)
                     (let ((_g20994_ (_%opt-lambda-split5376%_ _%L5627%_)))
                       (begin
                         (let ((_g20995_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20994_)
                                      (##vector-length _g20994_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20995_ 3)))
                               (error "Context expects 3 values" _g20995_)))
                         (let ((_%pre5640%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20994_ 0)))
                               (_%opt5642%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20994_ 1)))
                               (_%tail5643%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20994_ 2))))
                           (let* ((_%g56455653%_
                                   (lambda (_%g56465649%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g56465649%_)))
                                  (_%g56445822%_
                                   (lambda (_%g56465657%_)
                                     ((lambda (_%L5660%_)
                                        (let* ((_%g56735681%_
                                                (lambda (_%g56745677%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g56745677%_)))
                                               (_%g56725818%_
                                                (lambda (_%g56745685%_)
                                                  ((lambda (_%L5688%_)
                                                     (let* ((_%g57015718%_
                                                             (lambda (_%g57025714%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g57025714%_)))
                                                            (_%g57005814%_
                                                             (lambda (_%g57025722%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g57025722%_)
                           (let ((_g20996_
                                  (gx#syntax-split-splice _%g57025722%_ '0)))
                             (begin
                               (let ((_g20997_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g20996_)
                                            (##vector-length _g20996_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g20997_ 2)))
                                     (error "Context expects 2 values"
                                            _g20997_)))
                               (let ((_%target57045725%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g20996_ 0)))
                                     (_%tl57065728%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g20996_ 1))))
                                 (if (gx#stx-null? _%tl57065728%_)
                                     (letrec ((_%loop57075731%_
                                               (lambda (_%hd57055735%_
                                                        _%clause57115738%_)
                                                 (if (gx#stx-pair?
                                                      _%hd57055735%_)
                                                     (let ((_%e57085741%_
                                                            (gx#syntax-e
                                                             _%hd57055735%_)))
                                                       (let ((_%lp-hd57095745%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e57085741%_)))
                     (_%lp-tl57105748%_
                      (let () (declare (not safe)) (##cdr _%e57085741%_))))
                 (_%loop57075731%_
                  _%lp-tl57105748%_
                  (cons _%lp-hd57095745%_ _%clause57115738%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause57125751%_
                                                            (reverse _%clause57115738%_)))
                                                       ((lambda (_%L5755%_)
                                                          (let* ((_%g57725780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g57735776%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g57735776%_)))
                         (_%g57715802%_
                          (lambda (_%g57735784%_)
                            ((lambda (_%L5787%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%L5660%_ '())
                                                       (cons _%L5688%_ '()))
                                                 '())
                                           (cons _%L5787%_ '()))))
                             _%g57735784%_))))
                    (_%g57715802%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g58055808%_ _%g58065811%_)
                                     (cons _%g58055808%_ _%g58065811%_))
                                   '()
                                   _%L5755%_))
                      (gx#stx-source _%stx5370%_)))))
                _%clause57125751%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop57075731%_
                                        _%target57045725%_
                                        '()))
                                     (_%g57015718%_ _%g57025722%_)))))
                           (_%g57015718%_ _%g57025722%_)))))
               (_%g57005814%_
                (_%generate-opt-dispatch5381%_
                 _%L5660%_
                 _%pre5640%_
                 _%opt5642%_
                 _%tail5643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g56745685%_))))
                                          (_%g56725818%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5380%_
                                             _%pre5640%_
                                             _%opt5642%_
                                             _%tail5643%_
                                             _%L5625%_)
                                            (gx#stx-source _%stx5370%_)))))
                                      _%g56465657%_))))
                             (_%g56445822%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1950319504%_
                   (lambda (_%L5448%_ _%L5450%_)
                     (let* ((_%g54665473%_
                             (lambda (_%g54675469%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54675469%_)))
                            (_%g54655594%_
                             (lambda (_%g54675477%_)
                               ((lambda ()
                                  (let ((_g20998_
                                         (_%kw-lambda-split5378%_ _%L5450%_)))
                                    (begin
                                      (let ((_g20999_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g20998_)
                                                   (##vector-length _g20998_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g20999_ 3)))
                                            (error "Context expects 3 values"
                                                   _g20999_)))
                                      (let ((_%key5486%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20998_ 0)))
                                            (_%kwargs5488%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20998_ 1)))
                                            (_%args5489%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20998_ 2))))
                                        (let* ((_%g54915499%_
                                                (lambda (_%g54925495%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g54925495%_)))
                                               (_%g54905590%_
                                                (lambda (_%g54925503%_)
                                                  ((lambda (_%L5506%_)
                                                     (let* ((_%g55245532%_
                                                             (lambda (_%g55255528%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g55255528%_)))
                                                            (_%g55235586%_
                                                             (lambda (_%g55255536%_)
                                                               ((lambda (_%L5539%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g55525560%_
                                  (lambda (_%g55535556%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g55535556%_)))
                                 (_%g55515582%_
                                  (lambda (_%g55535564%_)
                                    ((lambda (_%L5567%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%L5506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%L5539%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%L5567%_ '()))))
                                     _%g55535564%_))))
                            (_%g55515582%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5385%_
                               _%L5506%_
                               _%kwargs5488%_
                               (not _%key5486%_))
                              (gx#stx-source _%stx5370%_)))))
                        _%g55255536%_))))
               (_%g55235586%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5384%_
                  _%key5486%_
                  _%kwargs5488%_
                  _%args5489%_
                  _%L5448%_)
                 (gx#stx-source _%stx5370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g54925503%_))))
                                          (_%g54905590%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g54655594%_
                        (_%check-duplicate-bindings5379%_ _%L5450%_))))))
              (let* ((_%__match1954119542%_
                      (lambda (_%e54105428%_
                               _%hd54115432%_
                               _%tl54125435%_
                               _%e54135438%_
                               _%hd54145442%_
                               _%tl54155445%_)
                        (let ((_%L5448%_ _%tl54155445%_)
                              (_%L5450%_ _%hd54145442%_))
                          (if (_%kw-lambda?5377%_ _%L5450%_)
                              (_%__kont1950319504%_ _%L5448%_ _%L5450%_)
                              (let () (declare (not safe)) (_%g53905421%_))))))
                     (_%__match1952919530%_
                      (lambda (_%e54025605%_
                               _%hd54035609%_
                               _%tl54045612%_
                               _%e54055615%_
                               _%hd54065619%_
                               _%tl54075622%_)
                        (let ((_%L5625%_ _%tl54075622%_)
                              (_%L5627%_ _%hd54065619%_))
                          (if (_%opt-lambda?5375%_ _%L5627%_)
                              (_%__kont1950119502%_ _%L5625%_ _%L5627%_)
                              (_%__match1954119542%_
                               _%e54025605%_
                               _%hd54035609%_
                               _%tl54045612%_
                               _%e54055615%_
                               _%hd54065619%_
                               _%tl54075622%_)))))
                     (_%__match1951719518%_
                      (lambda (_%e53945833%_
                               _%hd53955837%_
                               _%tl53965840%_
                               _%e53975843%_
                               _%hd53985847%_
                               _%tl53995850%_)
                        (let ((_%L5853%_ _%tl53995850%_)
                              (_%L5855%_ _%hd53985847%_))
                          (if (_%simple-lambda?5373%_ _%L5855%_)
                              (_%__kont1949919500%_ _%L5853%_ _%L5855%_)
                              (_%__match1952919530%_
                               _%e53945833%_
                               _%hd53955837%_
                               _%tl53965840%_
                               _%e53975843%_
                               _%hd53985847%_
                               _%tl53995850%_))))))
                (if (gx#stx-pair? _%__stx1949619497%_)
                    (let ((_%e53945833%_ (gx#syntax-e _%__stx1949619497%_)))
                      (let ((_%tl53965840%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e53945833%_)))
                            (_%hd53955837%_
                             (let ()
                               (declare (not safe))
                               (##car _%e53945833%_))))
                        (if (gx#stx-pair? _%tl53965840%_)
                            (let ((_%e53975843%_ (gx#syntax-e _%tl53965840%_)))
                              (let ((_%tl53995850%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e53975843%_)))
                                    (_%hd53985847%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e53975843%_))))
                                (_%__match1951719518%_
                                 _%e53945833%_
                                 _%hd53955837%_
                                 _%tl53965840%_
                                 _%e53975843%_
                                 _%hd53985847%_
                                 _%tl53995850%_)))
                            (let () (declare (not safe)) (_%g53905421%_)))))
                    (let () (declare (not safe)) (_%g53905421%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8795%_)
        (let* ((_%__stx1954419545%_ _%$stx8795%_)
               (_%g88018865%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1954419545%_))))
          (let ((_%__kont1954719548%_
                 (lambda (_%L9095%_ _%L9097%_ _%L9098%_ _%L9099%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%L9099%_ _%L9098%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L9097%_
                                                 (foldr (lambda (_%g91219124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g91229127%_)
                  (cons _%g91219124%_ _%g91229127%_))
                '()
                _%L9095%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1955119552%_
                 (lambda (_%L8987%_ _%L8989%_ _%L8990%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8990%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L8989%_
                                                 (foldr (lambda (_%g90099012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90109015%_)
                  (cons _%g90099012%_ _%g90109015%_))
                '()
                _%L8987%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1955519556%_
                 (lambda (_%L8902%_ _%L8904%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8904%_ '()) (cons _%L8902%_ '()))))))
            (let* ((_%__match1963519636%_
                    (lambda (_%e88518872%_
                             _%hd88528876%_
                             _%tl88538879%_
                             _%e88548882%_
                             _%hd88558886%_
                             _%tl88568889%_
                             _%e88578892%_
                             _%hd88588896%_
                             _%tl88598899%_)
                      (let ((_%L8902%_ _%hd88588896%_)
                            (_%L8904%_ _%hd88558886%_))
                        (if (gx#identifier? _%L8904%_)
                            (_%__kont1955519556%_ _%L8902%_ _%L8904%_)
                            (let () (declare (not safe)) (_%g88018865%_))))))
                   (_%__match1962719628%_
                    (lambda (_%e88518872%_
                             _%hd88528876%_
                             _%tl88538879%_
                             _%e88548882%_
                             _%hd88558886%_
                             _%tl88568889%_)
                      (if (gx#stx-pair? _%tl88568889%_)
                          (let ((_%e88578892%_ (gx#syntax-e _%tl88568889%_)))
                            (let ((_%tl88598899%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88578892%_)))
                                  (_%hd88588896%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88578892%_))))
                              (if (gx#stx-null? _%tl88598899%_)
                                  (_%__match1963519636%_
                                   _%e88518872%_
                                   _%hd88528876%_
                                   _%tl88538879%_
                                   _%e88548882%_
                                   _%hd88558886%_
                                   _%tl88568889%_
                                   _%e88578892%_
                                   _%hd88588896%_
                                   _%tl88598899%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g88018865%_)))))
                          (let () (declare (not safe)) (_%g88018865%_)))))
                   (_%__match1961519616%_
                    (lambda (_%e88318927%_
                             _%hd88328931%_
                             _%tl88338934%_
                             _%e88348937%_
                             _%hd88358941%_
                             _%tl88368944%_
                             _%e88378947%_
                             _%hd88388951%_
                             _%tl88398954%_
                             _%__splice1955319554%_
                             _%target88408957%_
                             _%tl88428960%_)
                      (letrec ((_%loop88438963%_
                                (lambda (_%hd88418967%_ _%body88478970%_)
                                  (if (gx#stx-pair? _%hd88418967%_)
                                      (let ((_%e88448973%_
                                             (gx#syntax-e _%hd88418967%_)))
                                        (let ((_%lp-tl88468980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88448973%_)))
                                              (_%lp-hd88458977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88448973%_))))
                                          (_%loop88438963%_
                                           _%lp-tl88468980%_
                                           (cons _%lp-hd88458977%_
                                                 _%body88478970%_))))
                                      (let ((_%body88488983%_
                                             (reverse _%body88478970%_)))
                                        (let ((_%L8987%_ _%body88488983%_)
                                              (_%L8989%_ _%tl88398954%_)
                                              (_%L8990%_ _%hd88388951%_))
                                          (if (gx#identifier? _%L8990%_)
                                              (_%__kont1955119552%_
                                               _%L8987%_
                                               _%L8989%_
                                               _%L8990%_)
                                              (_%__match1962719628%_
                                               _%e88318927%_
                                               _%hd88328931%_
                                               _%tl88338934%_
                                               _%e88348937%_
                                               _%hd88358941%_
                                               _%tl88368944%_))))))))
                        (_%loop88438963%_ _%target88408957%_ '()))))
                   (_%__match1958919590%_
                    (lambda (_%e88079025%_
                             _%hd88089029%_
                             _%tl88099032%_
                             _%e88109035%_
                             _%hd88119039%_
                             _%tl88129042%_
                             _%e88139045%_
                             _%hd88149049%_
                             _%tl88159052%_
                             _%e88169055%_
                             _%hd88179059%_
                             _%tl88189062%_
                             _%__splice1954919550%_
                             _%target88199065%_
                             _%tl88219068%_)
                      (letrec ((_%loop88229071%_
                                (lambda (_%hd88209075%_ _%body88269078%_)
                                  (if (gx#stx-pair? _%hd88209075%_)
                                      (let ((_%e88239081%_
                                             (gx#syntax-e _%hd88209075%_)))
                                        (let ((_%lp-tl88259088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88239081%_)))
                                              (_%lp-hd88249085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88239081%_))))
                                          (_%loop88229071%_
                                           _%lp-tl88259088%_
                                           (cons _%lp-hd88249085%_
                                                 _%body88269078%_))))
                                      (let ((_%body88279091%_
                                             (reverse _%body88269078%_)))
                                        (_%__kont1954719548%_
                                         _%body88279091%_
                                         _%tl88159052%_
                                         _%tl88189062%_
                                         _%hd88179059%_))))))
                        (_%loop88229071%_ _%target88199065%_ '())))))
              (if (gx#stx-pair? _%__stx1954419545%_)
                  (let ((_%e88079025%_ (gx#syntax-e _%__stx1954419545%_)))
                    (let ((_%tl88099032%_
                           (let () (declare (not safe)) (##cdr _%e88079025%_)))
                          (_%hd88089029%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88079025%_))))
                      (if (gx#stx-pair? _%tl88099032%_)
                          (let ((_%e88109035%_ (gx#syntax-e _%tl88099032%_)))
                            (let ((_%tl88129042%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88109035%_)))
                                  (_%hd88119039%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88109035%_))))
                              (if (gx#stx-pair? _%hd88119039%_)
                                  (let ((_%e88139045%_
                                         (gx#syntax-e _%hd88119039%_)))
                                    (let ((_%tl88159052%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e88139045%_)))
                                          (_%hd88149049%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e88139045%_))))
                                      (if (gx#stx-pair? _%hd88149049%_)
                                          (let ((_%e88169055%_
                                                 (gx#syntax-e _%hd88149049%_)))
                                            (let ((_%tl88189062%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e88169055%_)))
                                                  (_%hd88179059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e88169055%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl88129042%_)
                                                  (let ((_%__splice1954919550%_
                                                         (gx#syntax-split-splice
                                                          _%tl88129042%_
                                                          '0)))
                                                    (let ((_%tl88219068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1954919550%_
                                                              '1)))
                                                          (_%target88199065%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1954919550%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88219068%_)
                                                          (_%__match1958919590%_
                                                           _%e88079025%_
                                                           _%hd88089029%_
                                                           _%tl88099032%_
                                                           _%e88109035%_
                                                           _%hd88119039%_
                                                           _%tl88129042%_
                                                           _%e88139045%_
                                                           _%hd88149049%_
                                                           _%tl88159052%_
                                                           _%e88169055%_
                                                           _%hd88179059%_
                                                           _%tl88189062%_
                                                           _%__splice1954919550%_
                                                           _%target88199065%_
                                                           _%tl88219068%_)
                                                          (if (gx#stx-pair?
                                                               _%tl88129042%_)
                                                              (let ((_%e88578892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl88129042%_)))
                        (let ((_%tl88598899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88578892%_)))
                              (_%hd88588896%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88578892%_))))
                          (if (gx#stx-null? _%tl88598899%_)
                              (_%__match1963519636%_
                               _%e88079025%_
                               _%hd88089029%_
                               _%tl88099032%_
                               _%e88109035%_
                               _%hd88119039%_
                               _%tl88129042%_
                               _%e88578892%_
                               _%hd88588896%_
                               _%tl88598899%_)
                              (let () (declare (not safe)) (_%g88018865%_)))))
                      (let () (declare (not safe)) (_%g88018865%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl88129042%_)
                                                      (let ((_%e88578892%_
                                                             (gx#syntax-e
                                                              _%tl88129042%_)))
                                                        (let ((_%tl88598899%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88578892%_)))
                      (_%hd88588896%_
                       (let () (declare (not safe)) (##car _%e88578892%_))))
                  (if (gx#stx-null? _%tl88598899%_)
                      (_%__match1963519636%_
                       _%e88079025%_
                       _%hd88089029%_
                       _%tl88099032%_
                       _%e88109035%_
                       _%hd88119039%_
                       _%tl88129042%_
                       _%e88578892%_
                       _%hd88588896%_
                       _%tl88598899%_)
                      (let () (declare (not safe)) (_%g88018865%_)))))
              (let () (declare (not safe)) (_%g88018865%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl88129042%_)
                                              (let ((_%__splice1955319554%_
                                                     (gx#syntax-split-splice
                                                      _%tl88129042%_
                                                      '0)))
                                                (let ((_%tl88428960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1955319554%_
                                                          '1)))
                                                      (_%target88408957%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1955319554%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl88428960%_)
                                                      (_%__match1961519616%_
                                                       _%e88079025%_
                                                       _%hd88089029%_
                                                       _%tl88099032%_
                                                       _%e88109035%_
                                                       _%hd88119039%_
                                                       _%tl88129042%_
                                                       _%e88139045%_
                                                       _%hd88149049%_
                                                       _%tl88159052%_
                                                       _%__splice1955319554%_
                                                       _%target88408957%_
                                                       _%tl88428960%_)
                                                      (if (gx#stx-pair?
                                                           _%tl88129042%_)
                                                          (let ((_%e88578892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88129042%_)))
                    (let ((_%tl88598899%_
                           (let () (declare (not safe)) (##cdr _%e88578892%_)))
                          (_%hd88588896%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88578892%_))))
                      (if (gx#stx-null? _%tl88598899%_)
                          (_%__match1963519636%_
                           _%e88079025%_
                           _%hd88089029%_
                           _%tl88099032%_
                           _%e88109035%_
                           _%hd88119039%_
                           _%tl88129042%_
                           _%e88578892%_
                           _%hd88588896%_
                           _%tl88598899%_)
                          (let () (declare (not safe)) (_%g88018865%_)))))
                  (let () (declare (not safe)) (_%g88018865%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl88129042%_)
                                                  (let ((_%e88578892%_
                                                         (gx#syntax-e
                                                          _%tl88129042%_)))
                                                    (let ((_%tl88598899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e88578892%_)))
                                                          (_%hd88588896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e88578892%_))))
                                                      (if (gx#stx-null?
                                                           _%tl88598899%_)
                                                          (_%__match1963519636%_
                                                           _%e88079025%_
                                                           _%hd88089029%_
                                                           _%tl88099032%_
                                                           _%e88109035%_
                                                           _%hd88119039%_
                                                           _%tl88129042%_
                                                           _%e88578892%_
                                                           _%hd88588896%_
                                                           _%tl88598899%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88018865%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88018865%_)))))))
                                  (if (gx#stx-pair? _%tl88129042%_)
                                      (let ((_%e88578892%_
                                             (gx#syntax-e _%tl88129042%_)))
                                        (let ((_%tl88598899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88578892%_)))
                                              (_%hd88588896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88578892%_))))
                                          (if (gx#stx-null? _%tl88598899%_)
                                              (_%__match1963519636%_
                                               _%e88079025%_
                                               _%hd88089029%_
                                               _%tl88099032%_
                                               _%e88109035%_
                                               _%hd88119039%_
                                               _%tl88129042%_
                                               _%e88578892%_
                                               _%hd88588896%_
                                               _%tl88598899%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g88018865%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88018865%_))))))
                          (let () (declare (not safe)) (_%g88018865%_)))))
                  (let () (declare (not safe)) (_%g88018865%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9136%_)
        (let* ((_%g91409164%_
                (lambda (_%g91419160%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g91419160%_)))
               (_%g91399249%_
                (lambda (_%g91419168%_)
                  (if (gx#stx-pair? _%g91419168%_)
                      (let ((_%e91449171%_ (gx#syntax-e _%g91419168%_)))
                        (let ((_%hd91459175%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e91449171%_)))
                              (_%tl91469178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e91449171%_))))
                          (if (gx#stx-pair? _%tl91469178%_)
                              (let ((_%e91479181%_
                                     (gx#syntax-e _%tl91469178%_)))
                                (let ((_%hd91489185%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e91479181%_)))
                                      (_%tl91499188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e91479181%_))))
                                  (if (gx#stx-pair/null? _%tl91499188%_)
                                      (let ((_g21000_
                                             (gx#syntax-split-splice
                                              _%tl91499188%_
                                              '0)))
                                        (begin
                                          (let ((_g21001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21000_)
                                                       (##vector-length
                                                        _g21000_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21001_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21001_)))
                                          (let ((_%target91509191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21000_ 0)))
                                                (_%tl91529194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21000_ 1))))
                                            (if (gx#stx-null? _%tl91529194%_)
                                                (letrec ((_%loop91539197%_
                                                          (lambda (_%hd91519201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses91579204%_)
                    (if (gx#stx-pair? _%hd91519201%_)
                        (let ((_%e91549207%_ (gx#syntax-e _%hd91519201%_)))
                          (let ((_%lp-hd91559211%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e91549207%_)))
                                (_%lp-tl91569214%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e91549207%_))))
                            (_%loop91539197%_
                             _%lp-tl91569214%_
                             (cons _%lp-hd91559211%_ _%clauses91579204%_))))
                        (let ((_%clauses91589217%_
                               (reverse _%clauses91579204%_)))
                          ((lambda (_%L9221%_ _%L9223%_)
                             (if (gx#identifier? _%L9223%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%L9223%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g92409243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g92419246%_)
                          (cons _%g92409243%_ _%g92419246%_))
                        '()
                        _%L9221%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g91409164%_ _%g91419168%_)))
                           _%clauses91589217%_
                           _%hd91489185%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop91539197%_
                                                   _%target91509191%_
                                                   '()))
                                                (_%g91409164%_
                                                 _%g91419168%_)))))
                                      (_%g91409164%_ _%g91419168%_))))
                              (_%g91409164%_ _%g91419168%_))))
                      (_%g91409164%_ _%g91419168%_)))))
          (_%g91399249%_ _%$stx9136%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9254%_)
        (let* ((_%g92589276%_
                (lambda (_%g92599272%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92599272%_)))
               (_%g92579331%_
                (lambda (_%g92599280%_)
                  (if (gx#stx-pair? _%g92599280%_)
                      (let ((_%e92629283%_ (gx#syntax-e _%g92599280%_)))
                        (let ((_%hd92639287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92629283%_)))
                              (_%tl92649290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92629283%_))))
                          (if (gx#stx-pair? _%tl92649290%_)
                              (let ((_%e92659293%_
                                     (gx#syntax-e _%tl92649290%_)))
                                (let ((_%hd92669297%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92659293%_)))
                                      (_%tl92679300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92659293%_))))
                                  (if (gx#stx-pair? _%tl92679300%_)
                                      (let ((_%e92689303%_
                                             (gx#syntax-e _%tl92679300%_)))
                                        (let ((_%hd92699307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e92689303%_)))
                                              (_%tl92709310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e92689303%_))))
                                          (if (gx#stx-null? _%tl92709310%_)
                                              ((lambda (_%L9313%_ _%L9315%_)
                                                 (if (gx#identifier-list?
                                                      _%L9315%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%L9315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L9313%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g92589276%_
                                                      _%g92599280%_)))
                                               _%hd92699307%_
                                               _%hd92669297%_)
                                              (_%g92589276%_ _%g92599280%_))))
                                      (_%g92589276%_ _%g92599280%_))))
                              (_%g92589276%_ _%g92599280%_))))
                      (_%g92589276%_ _%g92599280%_)))))
          (_%g92579331%_ _%$stx9254%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9335%_)
        (let* ((_%g93399363%_
                (lambda (_%g93409359%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g93409359%_)))
               (_%g93389448%_
                (lambda (_%g93409367%_)
                  (if (gx#stx-pair? _%g93409367%_)
                      (let ((_%e93439370%_ (gx#syntax-e _%g93409367%_)))
                        (let ((_%hd93449374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e93439370%_)))
                              (_%tl93459377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e93439370%_))))
                          (if (gx#stx-pair? _%tl93459377%_)
                              (let ((_%e93469380%_
                                     (gx#syntax-e _%tl93459377%_)))
                                (let ((_%hd93479384%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e93469380%_)))
                                      (_%tl93489387%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e93469380%_))))
                                  (if (gx#stx-pair/null? _%tl93489387%_)
                                      (let ((_g21002_
                                             (gx#syntax-split-splice
                                              _%tl93489387%_
                                              '0)))
                                        (begin
                                          (let ((_g21003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21002_)
                                                       (##vector-length
                                                        _g21002_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21003_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21003_)))
                                          (let ((_%target93499390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21002_ 0)))
                                                (_%tl93519393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21002_ 1))))
                                            (if (gx#stx-null? _%tl93519393%_)
                                                (letrec ((_%loop93529396%_
                                                          (lambda (_%hd93509400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause93569403%_)
                    (if (gx#stx-pair? _%hd93509400%_)
                        (let ((_%e93539406%_ (gx#syntax-e _%hd93509400%_)))
                          (let ((_%lp-hd93549410%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e93539406%_)))
                                (_%lp-tl93559413%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e93539406%_))))
                            (_%loop93529396%_
                             _%lp-tl93559413%_
                             (cons _%lp-hd93549410%_ _%clause93569403%_))))
                        (let ((_%clause93579416%_
                               (reverse _%clause93569403%_)))
                          ((lambda (_%L9420%_ _%L9422%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%L9422%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g94399442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g94409445%_)
                            (cons _%g94399442%_ _%g94409445%_))
                          '()
                          _%L9420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause93579416%_
                           _%hd93479384%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop93529396%_
                                                   _%target93499390%_
                                                   '()))
                                                (_%g93399363%_
                                                 _%g93409367%_)))))
                                      (_%g93399363%_ _%g93409367%_))))
                              (_%g93399363%_ _%g93409367%_))))
                      (_%g93399363%_ _%g93409367%_)))))
          (_%g93389448%_ _%$stx9335%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9453%_)
        (letrec ((_%parse-clauses9456%_
                  (lambda (_%e11931%_ _%clauses11933%_)
                    (let _%lp11935%_ ((_%rest11938%_ _%clauses11933%_)
                                      (_%datums11940%_ '())
                                      (_%dispatch11941%_ '())
                                      (_%default11942%_ '#f))
                      (let* ((_%__stx1973419735%_ _%rest11938%_)
                             (_%g1194511957%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1973419735%_))))
                        (let ((_%__kont1973719738%_
                               (lambda (_%L11989%_ _%L11991%_)
                                 (let* ((_%__stx1963819639%_ _%L11991%_)
                                        (_%g1200912082%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1963819639%_))))
                                   (let ((_%__kont1964119642%_
                                          (lambda (_%L12447%_)
                                            (if (gx#stx-null? _%L11989%_)
                                                (let* ((_%g1246212470%_
                                                        (lambda (_%g1246312466%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1246312466%_)))
                                                       (_%g1246112489%_
                                                        (lambda (_%g1246312474%_)
                                                          ((lambda (_%L12477%_)
                                                             (_%lp11935%_
                                                              '()
                                                              _%datums11940%_
                                                              _%dispatch11941%_
                                                              (cons _%L12447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L12477%_ '()))))
                   _%g1246312474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1246112489%_ _%e11931%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9453%_
                                                 _%L11991%_))))
                                         (_%__kont1964319644%_
                                          (lambda (_%L12387%_)
                                            (if (gx#stx-null? _%L11989%_)
                                                (_%lp11935%_
                                                 '()
                                                 _%datums11940%_
                                                 _%dispatch11941%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1240112404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1240212407%_)
                        (cons _%g1240112404%_ _%g1240212407%_))
                      '()
                      _%L12387%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9453%_
                                                 _%L11991%_))))
                                         (_%__kont1964719648%_
                                          (lambda (_%L12272%_ _%L12274%_)
                                            (if (null? (foldr (lambda (_%g1229212295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1229312298%_)
                        (cons _%g1229212295%_ _%g1229312298%_))
                      '()
                      _%L12274%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11935%_
                                                 _%L11989%_
                                                 _%datums11940%_
                                                 _%dispatch11941%_
                                                 _%default11942%_)
                                                (let* ((_%g1230112309%_
                                                        (lambda (_%g1230212305%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1230212305%_)))
                                                       (_%g1230012336%_
                                                        (lambda (_%g1230212313%_)
                                                          ((lambda (_%L12316%_)
                                                             (_%lp11935%_
                                                              _%L11989%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1232712330%_
                                                 _%g1232812333%_)
                                          (cons _%g1232712330%_
                                                _%g1232812333%_))
                                        '()
                                        _%L12274%_))
                            _%datums11940%_)
                      (cons (cons _%L12272%_ (cons _%L12316%_ '()))
                            _%dispatch11941%_)
                      _%default11942%_))
                   _%g1230212313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1230012336%_
                                                   _%e11931%_)))))
                                         (_%__kont1965119652%_
                                          (lambda (_%L12159%_ _%L12161%_)
                                            (if (null? (foldr (lambda (_%g1218012183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1218112186%_)
                        (cons _%g1218012183%_ _%g1218112186%_))
                      '()
                      _%L12161%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11935%_
                                                 _%L11989%_
                                                 _%datums11940%_
                                                 _%dispatch11941%_
                                                 _%default11942%_)
                                                (_%lp11935%_
                                                 _%L11989%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1218812191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1218912194%_)
                             (cons _%g1218812191%_ _%g1218912194%_))
                           '()
                           _%L12161%_))
               _%datums11940%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1219612199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1219712202%_)
                              (cons _%g1219612199%_ _%g1219712202%_))
                            '()
                            _%L12159%_))
               _%dispatch11941%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11942%_)))))
                                     (let* ((_%__match1973119732%_
                                             (lambda (_%e1205612089%_
                                                      _%hd1205712093%_
                                                      _%tl1205812096%_
                                                      _%__splice1965319654%_
                                                      _%target1205912099%_
                                                      _%tl1206112102%_)
                                               (letrec ((_%loop1206212105%_
                                                         (lambda (_%hd1206012109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1206612112%_)
                   (if (gx#stx-pair? _%hd1206012109%_)
                       (let ((_%e1206312115%_ (gx#syntax-e _%hd1206012109%_)))
                         (let ((_%lp-tl1206512122%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1206312115%_)))
                               (_%lp-hd1206412119%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1206312115%_))))
                           (_%loop1206212105%_
                            _%lp-tl1206512122%_
                            (cons _%lp-hd1206412119%_ _%datum1206612112%_))))
                       (let ((_%datum1206712125%_
                              (reverse _%datum1206612112%_)))
                         (if (gx#stx-pair/null? _%tl1205812096%_)
                             (let ((_%__splice1965519656%_
                                    (gx#syntax-split-splice
                                     _%tl1205812096%_
                                     '0)))
                               (let ((_%tl1207012132%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1965519656%_
                                         '1)))
                                     (_%target1206812129%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1965519656%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1207012132%_)
                                     (letrec ((_%loop1207112135%_
                                               (lambda (_%hd1206912139%_
                                                        _%body1207512142%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1206912139%_)
                                                     (let ((_%e1207212145%_
                                                            (gx#syntax-e
                                                             _%hd1206912139%_)))
                                                       (let ((_%lp-tl1207412152%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1207212145%_)))
                     (_%lp-hd1207312149%_
                      (let () (declare (not safe)) (##car _%e1207212145%_))))
                 (_%loop1207112135%_
                  _%lp-tl1207412152%_
                  (cons _%lp-hd1207312149%_ _%body1207512142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1207612155%_
                                                            (reverse _%body1207512142%_)))
                                                       (_%__kont1965119652%_
                                                        _%body1207612155%_
                                                        _%datum1206712125%_))))))
                                       (_%loop1207112135%_
                                        _%target1206812129%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1200912082%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1200912082%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1206212105%_
                                                  _%target1205912099%_
                                                  '()))))
                                            (_%__match1971719718%_
                                             (lambda (_%e1203612212%_
                                                      _%hd1203712216%_
                                                      _%tl1203812219%_
                                                      _%__splice1964919650%_
                                                      _%target1203912222%_
                                                      _%tl1204112225%_)
                                               (letrec ((_%loop1204212228%_
                                                         (lambda (_%hd1204012232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1204612235%_)
                   (if (gx#stx-pair? _%hd1204012232%_)
                       (let ((_%e1204312238%_ (gx#syntax-e _%hd1204012232%_)))
                         (let ((_%lp-tl1204512245%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1204312238%_)))
                               (_%lp-hd1204412242%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1204312238%_))))
                           (_%loop1204212228%_
                            _%lp-tl1204512245%_
                            (cons _%lp-hd1204412242%_ _%datum1204612235%_))))
                       (let ((_%datum1204712248%_
                              (reverse _%datum1204612235%_)))
                         (if (gx#stx-pair? _%tl1203812219%_)
                             (let ((_%e1204812252%_
                                    (gx#syntax-e _%tl1203812219%_)))
                               (let ((_%tl1205012259%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1204812252%_)))
                                     (_%hd1204912256%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1204812252%_))))
                                 (if (gx#identifier? _%hd1204912256%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g21004_|
                                          _%hd1204912256%_)
                                         (if (gx#stx-pair? _%tl1205012259%_)
                                             (let ((_%e1205112262%_
                                                    (gx#syntax-e
                                                     _%tl1205012259%_)))
                                               (let ((_%tl1205312269%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1205112262%_)))
                                                     (_%hd1205212266%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1205112262%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1205312269%_)
                                                     (_%__kont1964719648%_
                                                      _%hd1205212266%_
                                                      _%datum1204712248%_)
                                                     (_%__match1973119732%_
                                                      _%e1203612212%_
                                                      _%hd1203712216%_
                                                      _%tl1203812219%_
                                                      _%__splice1964919650%_
                                                      _%target1203912222%_
                                                      _%tl1204112225%_))))
                                             (_%__match1973119732%_
                                              _%e1203612212%_
                                              _%hd1203712216%_
                                              _%tl1203812219%_
                                              _%__splice1964919650%_
                                              _%target1203912222%_
                                              _%tl1204112225%_))
                                         (_%__match1973119732%_
                                          _%e1203612212%_
                                          _%hd1203712216%_
                                          _%tl1203812219%_
                                          _%__splice1964919650%_
                                          _%target1203912222%_
                                          _%tl1204112225%_))
                                     (_%__match1973119732%_
                                      _%e1203612212%_
                                      _%hd1203712216%_
                                      _%tl1203812219%_
                                      _%__splice1964919650%_
                                      _%target1203912222%_
                                      _%tl1204112225%_))))
                             (_%__match1973119732%_
                              _%e1203612212%_
                              _%hd1203712216%_
                              _%tl1203812219%_
                              _%__splice1964919650%_
                              _%target1203912222%_
                              _%tl1204112225%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1204212228%_
                                                  _%target1203912222%_
                                                  '()))))
                                            (_%__match1970319704%_
                                             (lambda (_%e1202212347%_
                                                      _%hd1202312351%_
                                                      _%tl1202412354%_
                                                      _%__splice1964519646%_
                                                      _%target1202512357%_
                                                      _%tl1202712360%_)
                                               (letrec ((_%loop1202812363%_
                                                         (lambda (_%hd1202612367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1203212370%_)
                   (if (gx#stx-pair? _%hd1202612367%_)
                       (let ((_%e1202912373%_ (gx#syntax-e _%hd1202612367%_)))
                         (let ((_%lp-tl1203112380%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1202912373%_)))
                               (_%lp-hd1203012377%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1202912373%_))))
                           (_%loop1202812363%_
                            _%lp-tl1203112380%_
                            (cons _%lp-hd1203012377%_ _%body1203212370%_))))
                       (let ((_%body1203312383%_ (reverse _%body1203212370%_)))
                         (_%__kont1964319644%_ _%body1203312383%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1202812363%_
                                                  _%target1202512357%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1963819639%_)
                                           (let ((_%e1201212417%_
                                                  (gx#syntax-e
                                                   _%__stx1963819639%_)))
                                             (let ((_%tl1201412424%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1201212417%_)))
                                                   (_%hd1201312421%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1201212417%_))))
                                               (if (gx#identifier?
                                                    _%hd1201312421%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g21005_|
                                                        _%hd1201312421%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1201412424%_)
                                                           (let ((_%e1201512427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1201412424%_)))
                     (let ((_%tl1201712434%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1201512427%_)))
                           (_%hd1201612431%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1201512427%_))))
                       (if (gx#identifier? _%hd1201612431%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g21006_|
                                _%hd1201612431%_)
                               (if (gx#stx-pair? _%tl1201712434%_)
                                   (let ((_%e1201812437%_
                                          (gx#syntax-e _%tl1201712434%_)))
                                     (let ((_%tl1202012444%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1201812437%_)))
                                           (_%hd1201912441%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1201812437%_))))
                                       (if (gx#stx-null? _%tl1202012444%_)
                                           (_%__kont1964119642%_
                                            _%hd1201912441%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1201412424%_)
                                               (let ((_%__splice1964519646%_
                                                      (gx#syntax-split-splice
                                                       _%tl1201412424%_
                                                       '0)))
                                                 (let ((_%tl1202712360%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964519646%_
                                                           '1)))
                                                       (_%target1202512357%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964519646%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1202712360%_)
                                                       (_%__match1970319704%_
                                                        _%e1201212417%_
                                                        _%hd1201312421%_
                                                        _%tl1201412424%_
                                                        _%__splice1964519646%_
                                                        _%target1202512357%_
                                                        _%tl1202712360%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1201312421%_)
                                                           (let ((_%__splice1964919650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%hd1201312421%_ '0)))
                     (let ((_%tl1204112225%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964919650%_ '1)))
                           (_%target1203912222%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964919650%_ '0))))
                       (if (gx#stx-null? _%tl1204112225%_)
                           (_%__match1971719718%_
                            _%e1201212417%_
                            _%hd1201312421%_
                            _%tl1201412424%_
                            _%__splice1964919650%_
                            _%target1203912222%_
                            _%tl1204112225%_)
                           (let () (declare (not safe)) (_%g1200912082%_)))))
                   (let () (declare (not safe)) (_%g1200912082%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1201312421%_)
                                                   (let ((_%__splice1964919650%_
                                                          (gx#syntax-split-splice
                                                           _%hd1201312421%_
                                                           '0)))
                                                     (let ((_%tl1204112225%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964919650%_
                                                               '1)))
                                                           (_%target1203912222%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964919650%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1204112225%_)
                                                           (_%__match1971719718%_
                                                            _%e1201212417%_
                                                            _%hd1201312421%_
                                                            _%tl1201412424%_
                                                            _%__splice1964919650%_
                                                            _%target1203912222%_
                                                            _%tl1204112225%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1200912082%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200912082%_)))))))
                                   (if (gx#stx-pair/null? _%tl1201412424%_)
                                       (let ((_%__splice1964519646%_
                                              (gx#syntax-split-splice
                                               _%tl1201412424%_
                                               '0)))
                                         (let ((_%tl1202712360%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964519646%_
                                                   '1)))
                                               (_%target1202512357%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964519646%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1202712360%_)
                                               (_%__match1970319704%_
                                                _%e1201212417%_
                                                _%hd1201312421%_
                                                _%tl1201412424%_
                                                _%__splice1964519646%_
                                                _%target1202512357%_
                                                _%tl1202712360%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1201312421%_)
                                                   (let ((_%__splice1964919650%_
                                                          (gx#syntax-split-splice
                                                           _%hd1201312421%_
                                                           '0)))
                                                     (let ((_%tl1204112225%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964919650%_
                                                               '1)))
                                                           (_%target1203912222%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964919650%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1204112225%_)
                                                           (_%__match1971719718%_
                                                            _%e1201212417%_
                                                            _%hd1201312421%_
                                                            _%tl1201412424%_
                                                            _%__splice1964919650%_
                                                            _%target1203912222%_
                                                            _%tl1204112225%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1200912082%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200912082%_))))))
                                       (if (gx#stx-pair/null? _%hd1201312421%_)
                                           (let ((_%__splice1964919650%_
                                                  (gx#syntax-split-splice
                                                   _%hd1201312421%_
                                                   '0)))
                                             (let ((_%tl1204112225%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964919650%_
                                                       '1)))
                                                   (_%target1203912222%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964919650%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1204112225%_)
                                                   (_%__match1971719718%_
                                                    _%e1201212417%_
                                                    _%hd1201312421%_
                                                    _%tl1201412424%_
                                                    _%__splice1964919650%_
                                                    _%target1203912222%_
                                                    _%tl1204112225%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200912082%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200912082%_)))))
                               (if (gx#stx-pair/null? _%tl1201412424%_)
                                   (let ((_%__splice1964519646%_
                                          (gx#syntax-split-splice
                                           _%tl1201412424%_
                                           '0)))
                                     (let ((_%tl1202712360%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964519646%_
                                               '1)))
                                           (_%target1202512357%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964519646%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1202712360%_)
                                           (_%__match1970319704%_
                                            _%e1201212417%_
                                            _%hd1201312421%_
                                            _%tl1201412424%_
                                            _%__splice1964519646%_
                                            _%target1202512357%_
                                            _%tl1202712360%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1201312421%_)
                                               (let ((_%__splice1964919650%_
                                                      (gx#syntax-split-splice
                                                       _%hd1201312421%_
                                                       '0)))
                                                 (let ((_%tl1204112225%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964919650%_
                                                           '1)))
                                                       (_%target1203912222%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964919650%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1204112225%_)
                                                       (_%__match1971719718%_
                                                        _%e1201212417%_
                                                        _%hd1201312421%_
                                                        _%tl1201412424%_
                                                        _%__splice1964919650%_
                                                        _%target1203912222%_
                                                        _%tl1204112225%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1200912082%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1200912082%_))))))
                                   (if (gx#stx-pair/null? _%hd1201312421%_)
                                       (let ((_%__splice1964919650%_
                                              (gx#syntax-split-splice
                                               _%hd1201312421%_
                                               '0)))
                                         (let ((_%tl1204112225%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964919650%_
                                                   '1)))
                                               (_%target1203912222%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964919650%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1204112225%_)
                                               (_%__match1971719718%_
                                                _%e1201212417%_
                                                _%hd1201312421%_
                                                _%tl1201412424%_
                                                _%__splice1964919650%_
                                                _%target1203912222%_
                                                _%tl1204112225%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1200912082%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1200912082%_)))))
                           (if (gx#stx-pair/null? _%tl1201412424%_)
                               (let ((_%__splice1964519646%_
                                      (gx#syntax-split-splice
                                       _%tl1201412424%_
                                       '0)))
                                 (let ((_%tl1202712360%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1964519646%_
                                           '1)))
                                       (_%target1202512357%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1964519646%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1202712360%_)
                                       (_%__match1970319704%_
                                        _%e1201212417%_
                                        _%hd1201312421%_
                                        _%tl1201412424%_
                                        _%__splice1964519646%_
                                        _%target1202512357%_
                                        _%tl1202712360%_)
                                       (if (gx#stx-pair/null? _%hd1201312421%_)
                                           (let ((_%__splice1964919650%_
                                                  (gx#syntax-split-splice
                                                   _%hd1201312421%_
                                                   '0)))
                                             (let ((_%tl1204112225%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964919650%_
                                                       '1)))
                                                   (_%target1203912222%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964919650%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1204112225%_)
                                                   (_%__match1971719718%_
                                                    _%e1201212417%_
                                                    _%hd1201312421%_
                                                    _%tl1201412424%_
                                                    _%__splice1964919650%_
                                                    _%target1203912222%_
                                                    _%tl1204112225%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200912082%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200912082%_))))))
                               (if (gx#stx-pair/null? _%hd1201312421%_)
                                   (let ((_%__splice1964919650%_
                                          (gx#syntax-split-splice
                                           _%hd1201312421%_
                                           '0)))
                                     (let ((_%tl1204112225%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964919650%_
                                               '1)))
                                           (_%target1203912222%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964919650%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1204112225%_)
                                           (_%__match1971719718%_
                                            _%e1201212417%_
                                            _%hd1201312421%_
                                            _%tl1201412424%_
                                            _%__splice1964919650%_
                                            _%target1203912222%_
                                            _%tl1204112225%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200912082%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1200912082%_)))))))
                   (if (gx#stx-pair/null? _%tl1201412424%_)
                       (let ((_%__splice1964519646%_
                              (gx#syntax-split-splice _%tl1201412424%_ '0)))
                         (let ((_%tl1202712360%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1964519646%_ '1)))
                               (_%target1202512357%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1964519646%_ '0))))
                           (if (gx#stx-null? _%tl1202712360%_)
                               (_%__match1970319704%_
                                _%e1201212417%_
                                _%hd1201312421%_
                                _%tl1201412424%_
                                _%__splice1964519646%_
                                _%target1202512357%_
                                _%tl1202712360%_)
                               (if (gx#stx-pair/null? _%hd1201312421%_)
                                   (let ((_%__splice1964919650%_
                                          (gx#syntax-split-splice
                                           _%hd1201312421%_
                                           '0)))
                                     (let ((_%tl1204112225%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964919650%_
                                               '1)))
                                           (_%target1203912222%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964919650%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1204112225%_)
                                           (_%__match1971719718%_
                                            _%e1201212417%_
                                            _%hd1201312421%_
                                            _%tl1201412424%_
                                            _%__splice1964919650%_
                                            _%target1203912222%_
                                            _%tl1204112225%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200912082%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1200912082%_))))))
                       (if (gx#stx-pair/null? _%hd1201312421%_)
                           (let ((_%__splice1964919650%_
                                  (gx#syntax-split-splice
                                   _%hd1201312421%_
                                   '0)))
                             (let ((_%tl1204112225%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1964919650%_
                                       '1)))
                                   (_%target1203912222%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1964919650%_
                                       '0))))
                               (if (gx#stx-null? _%tl1204112225%_)
                                   (_%__match1971719718%_
                                    _%e1201212417%_
                                    _%hd1201312421%_
                                    _%tl1201412424%_
                                    _%__splice1964919650%_
                                    _%target1203912222%_
                                    _%tl1204112225%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1200912082%_)))))
                           (let () (declare (not safe)) (_%g1200912082%_)))))
               (if (gx#stx-pair/null? _%hd1201312421%_)
                   (let ((_%__splice1964919650%_
                          (gx#syntax-split-splice _%hd1201312421%_ '0)))
                     (let ((_%tl1204112225%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964919650%_ '1)))
                           (_%target1203912222%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964919650%_ '0))))
                       (if (gx#stx-null? _%tl1204112225%_)
                           (_%__match1971719718%_
                            _%e1201212417%_
                            _%hd1201312421%_
                            _%tl1201412424%_
                            _%__splice1964919650%_
                            _%target1203912222%_
                            _%tl1204112225%_)
                           (let () (declare (not safe)) (_%g1200912082%_)))))
                   (let () (declare (not safe)) (_%g1200912082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1201312421%_)
                                                       (let ((_%__splice1964919650%_
                                                              (gx#syntax-split-splice
                                                               _%hd1201312421%_
                                                               '0)))
                                                         (let ((_%tl1204112225%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1964919650%_ '1)))
                       (_%target1203912222%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1964919650%_ '0))))
                   (if (gx#stx-null? _%tl1204112225%_)
                       (_%__match1971719718%_
                        _%e1201212417%_
                        _%hd1201312421%_
                        _%tl1201412424%_
                        _%__splice1964919650%_
                        _%target1203912222%_
                        _%tl1204112225%_)
                       (let () (declare (not safe)) (_%g1200912082%_)))))
               (let () (declare (not safe)) (_%g1200912082%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200912082%_))))))))
                              (_%__kont1973919740%_
                               (lambda ()
                                 (_%check-duplicate-datums9458%_
                                  _%datums11940%_)
                                 (values (reverse _%datums11940%_)
                                         (reverse _%dispatch11941%_)
                                         (let ((_%$e11968%_ _%default11942%_))
                                           (if _%$e11968%_
                                               _%$e11968%_
                                               '#!void))))))
                          (let ((_%g1194411972%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1973419735%_)
                                       (_%__kont1973919740%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1194511957%_))))))
                            (if (gx#stx-pair? _%__stx1973419735%_)
                                (let ((_%e1194911979%_
                                       (gx#syntax-e _%__stx1973419735%_)))
                                  (let ((_%tl1195111986%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1194911979%_)))
                                        (_%hd1195011983%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1194911979%_))))
                                    (_%__kont1973719738%_
                                     _%tl1195111986%_
                                     _%hd1195011983%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1194411972%_)))))))))
                 (_%check-duplicate-datums9458%_
                  (lambda (_%datums11919%_)
                    (let ((_%ht11922%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11925%_)
                         (for-each
                          (lambda (_%datum11928%_)
                            (if (hash-get _%ht11922%_ _%datum11928%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9453%_
                                 _%datum11928%_)
                                (hash-put! _%ht11922%_ _%datum11928%_ '#t)))
                          _%lst11925%_))
                       _%datums11919%_))))
                 (_%count-datums9459%_
                  (lambda (_%datums11912%_)
                    (foldl (lambda (_%lst11915%_ _%r11917%_)
                             (+ (length _%lst11915%_) _%r11917%_))
                           '0
                           _%datums11912%_)))
                 (_%symbolic-datums?9460%_
                  (lambda (_%datums11906%_)
                    (andmap (lambda (_%lst11909%_)
                              (andmap symbol? _%lst11909%_))
                            _%datums11906%_)))
                 (_%char-datums?9461%_
                  (lambda (_%datums11900%_)
                    (andmap (lambda (_%lst11903%_) (andmap char? _%lst11903%_))
                            _%datums11900%_)))
                 (_%fixnum-datums?9462%_
                  (lambda (_%datums11894%_)
                    (andmap (lambda (_%lst11897%_)
                              (andmap fixnum? _%lst11897%_))
                            _%datums11894%_)))
                 (_%eq-datums?9463%_
                  (lambda (_%datums11877%_)
                    (andmap (lambda (_%lst11880%_)
                              (andmap (lambda (_%x11883%_)
                                        (let ((_%$e11886%_
                                               (symbol? _%x11883%_)))
                                          (if _%$e11886%_
                                              _%$e11886%_
                                              (let ((_%$e11890%_
                                                     (keyword? _%x11883%_)))
                                                (if _%$e11890%_
                                                    _%$e11890%_
                                                    (immediate?
                                                     _%x11883%_))))))
                                      _%lst11880%_))
                            _%datums11877%_)))
                 (_%generate-simple-case9464%_
                  (lambda (_%e11641%_
                           _%datums11643%_
                           _%dispatch11644%_
                           _%default11645%_)
                    (let* ((_%g1164711655%_
                            (lambda (_%g1164811651%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1164811651%_)))
                           (_%g1164611873%_
                            (lambda (_%g1164811659%_)
                              ((lambda (_%L11662%_)
                                 (let _%recur11674%_ ((_%datums11677%_
                                                       _%datums11643%_)
                                                      (_%dispatch11679%_
                                                       _%dispatch11644%_))
                                   (let* ((_%__stx1975219753%_ _%datums11677%_)
                                          (_%g1168211703%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1975219753%_))))
                                     (let ((_%__kont1975519756%_
                                            (lambda (_%L11761%_ _%L11763%_)
                                              (let* ((_%g1178311795%_
                                                      (lambda (_%g1178411791%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1178411791%_)))
                                                     (_%g1178211865%_
                                                      (lambda (_%g1178411799%_)
                                                        (if (gx#stx-pair?
                                                             _%g1178411799%_)
                                                            (let ((_%e1178711802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1178411799%_)))
                      (let ((_%hd1178811806%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1178711802%_)))
                            (_%tl1178911809%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1178711802%_))))
                        ((lambda (_%L11812%_ _%L11814%_)
                           (let* ((_%g1182611834%_
                                   (lambda (_%g1182711830%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1182711830%_)))
                                  (_%g1182511861%_
                                   (lambda (_%g1182711838%_)
                                     ((lambda (_%L11841%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1185211855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1185311858%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1185211855%_
                                             (cons _%L11662%_ '())))
                                 _%g1185311858%_))
                         '()
                         _%L11763%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L11814%_
                                                          (cons _%L11841%_
                                                                '())))))
                                      _%g1182711838%_))))
                             (_%g1182511861%_
                              (_%recur11674%_ _%L11761%_ _%L11812%_))))
                         _%tl1178911809%_
                         _%hd1178811806%_)))
                    (_%g1178311795%_ _%g1178411799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1178211865%_
                                                 _%dispatch11679%_))))
                                           (_%__kont1975919760%_
                                            (lambda () _%default11645%_)))
                                       (let ((_%__match1977519776%_
                                              (lambda (_%e1168611721%_
                                                       _%hd1168711725%_
                                                       _%tl1168811728%_
                                                       _%__splice1975719758%_
                                                       _%target1168911731%_
                                                       _%tl1169111734%_)
                                                (letrec ((_%loop1169211737%_
                                                          (lambda (_%hd1169011741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1169611744%_)
                    (if (gx#stx-pair? _%hd1169011741%_)
                        (let ((_%e1169311747%_ (gx#syntax-e _%hd1169011741%_)))
                          (let ((_%lp-tl1169511754%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1169311747%_)))
                                (_%lp-hd1169411751%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1169311747%_))))
                            (_%loop1169211737%_
                             _%lp-tl1169511754%_
                             (cons _%lp-hd1169411751%_ _%datum1169611744%_))))
                        (let ((_%datum1169711757%_
                               (reverse _%datum1169611744%_)))
                          (_%__kont1975519756%_
                           _%tl1168811728%_
                           _%datum1169711757%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1169211737%_
                                                   _%target1168911731%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1975219753%_)
                                             (let ((_%e1168611721%_
                                                    (gx#syntax-e
                                                     _%__stx1975219753%_)))
                                               (let ((_%tl1168811728%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1168611721%_)))
                                                     (_%hd1168711725%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1168611721%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1168711725%_)
                                                     (let ((_%__splice1975719758%_
                                                            (gx#syntax-split-splice
                                                             _%hd1168711725%_
                                                             '0)))
                                                       (let ((_%tl1169111734%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1975719758%_ '1)))
                     (_%target1168911731%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1975719758%_ '0))))
                 (if (gx#stx-null? _%tl1169111734%_)
                     (_%__match1977519776%_
                      _%e1168611721%_
                      _%hd1168711725%_
                      _%tl1168811728%_
                      _%__splice1975719758%_
                      _%target1168911731%_
                      _%tl1169111734%_)
                     (_%__kont1975919760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1975919760%_))))
                                             (_%__kont1975919760%_)))))))
                               _%g1164811659%_))))
                      (_%g1164611873%_ _%e11641%_))))
                 (_%datum-dispatch-index9465%_
                  (lambda (_%datums11513%_)
                    (let _%lp11516%_ ((_%rest11519%_ _%datums11513%_)
                                      (_%ix11521%_ '0)
                                      (_%r11522%_ '()))
                      (let* ((_%__stx1977819779%_ _%rest11519%_)
                             (_%g1152511546%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1977819779%_))))
                        (let ((_%__kont1978119782%_
                               (lambda (_%L11604%_ _%L11606%_)
                                 (_%lp11516%_
                                  _%L11604%_
                                  (fx1+ _%ix11521%_)
                                  (foldl (lambda (_%x11625%_ _%r11627%_)
                                           (cons (cons _%x11625%_ _%ix11521%_)
                                                 _%r11627%_))
                                         _%r11522%_
                                         (foldr (lambda (_%g1162811631%_
                                                         _%g1162911634%_)
                                                  (cons _%g1162811631%_
                                                        _%g1162911634%_))
                                                '()
                                                _%L11606%_)))))
                              (_%__kont1978519786%_ (lambda () _%r11522%_)))
                          (let ((_%__match1980119802%_
                                 (lambda (_%e1152911564%_
                                          _%hd1153011568%_
                                          _%tl1153111571%_
                                          _%__splice1978319784%_
                                          _%target1153211574%_
                                          _%tl1153411577%_)
                                   (letrec ((_%loop1153511580%_
                                             (lambda (_%hd1153311584%_
                                                      _%datum1153911587%_)
                                               (if (gx#stx-pair?
                                                    _%hd1153311584%_)
                                                   (let ((_%e1153611590%_
                                                          (gx#syntax-e
                                                           _%hd1153311584%_)))
                                                     (let ((_%lp-tl1153811597%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1153611590%_)))
                                                           (_%lp-hd1153711594%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1153611590%_))))
                                                       (_%loop1153511580%_
                                                        _%lp-tl1153811597%_
                                                        (cons _%lp-hd1153711594%_
                                                              _%datum1153911587%_))))
                                                   (let ((_%datum1154011600%_
                                                          (reverse _%datum1153911587%_)))
                                                     (_%__kont1978119782%_
                                                      _%tl1153111571%_
                                                      _%datum1154011600%_))))))
                                     (_%loop1153511580%_
                                      _%target1153211574%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1977819779%_)
                                (let ((_%e1152911564%_
                                       (gx#syntax-e _%__stx1977819779%_)))
                                  (let ((_%tl1153111571%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1152911564%_)))
                                        (_%hd1153011568%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1152911564%_))))
                                    (if (gx#stx-pair/null? _%hd1153011568%_)
                                        (let ((_%__splice1978319784%_
                                               (gx#syntax-split-splice
                                                _%hd1153011568%_
                                                '0)))
                                          (let ((_%tl1153411577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1978319784%_
                                                    '1)))
                                                (_%target1153211574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1978319784%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1153411577%_)
                                                (_%__match1980119802%_
                                                 _%e1152911564%_
                                                 _%hd1153011568%_
                                                 _%tl1153111571%_
                                                 _%__splice1978319784%_
                                                 _%target1153211574%_
                                                 _%tl1153411577%_)
                                                (_%__kont1978519786%_))))
                                        (_%__kont1978519786%_))))
                                (_%__kont1978519786%_))))))))
                 (_%duplicate-indexes?9466%_
                  (lambda (_%xs11494%_)
                    (let ((_%ht11497%_ (make-hash-table-eq)))
                      (let _%lp11500%_ ((_%rest11503%_ _%xs11494%_))
                        (if (pair? _%rest11503%_)
                            (let* ((_%ix11506%_ (car _%rest11503%_))
                                   (_%$e11509%_
                                    (hash-get _%ht11497%_ _%ix11506%_)))
                              (if _%$e11509%_
                                  _%$e11509%_
                                  (begin
                                    (hash-put! _%ht11497%_ _%ix11506%_ '#t)
                                    (_%lp11500%_ (cdr _%rest11503%_)))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9467%_
                  (lambda (_%indexes11463%_ _%hash-e11465%_)
                    (let _%lp11467%_ ((_%len11470%_
                                       (* '2 (length _%indexes11463%_))))
                      (let* ((_%hs11476%_
                              (map (lambda (_%x11473%_)
                                     (_%hash-e11465%_ (car _%x11473%_)))
                                   _%indexes11463%_))
                             (_%xs11482%_
                              (map (lambda (_%h11479%_)
                                     (fxmodulo _%h11479%_ _%len11470%_))
                                   _%hs11476%_)))
                        (if (_%duplicate-indexes?9466%_ _%xs11482%_)
                            (if (< _%len11470%_ '131072)
                                (_%lp11467%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11470%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9453%_
                                 _%indexes11463%_))
                            (let ((_%tab11487%_
                                   (make-vector _%len11470%_ '#f)))
                              (for-each
                               (lambda (_%entry11490%_ _%x11492%_)
                                 (vector-set!
                                  _%tab11487%_
                                  _%x11492%_
                                  _%entry11490%_))
                               _%indexes11463%_
                               _%xs11482%_)
                              _%tab11487%_))))))
                 (_%generate-symbolic-dispatch9468%_
                  (lambda (_%e11066%_
                           _%datums11068%_
                           _%dispatch11069%_
                           _%default11070%_)
                    (let* ((_%indexes11072%_
                            (_%datum-dispatch-index9465%_ _%datums11068%_))
                           (_%tab11075%_
                            (_%generate-hash-dispatch-table9467%_
                             _%indexes11072%_
                             symbol-hash)))
                      (if (= (length _%dispatch11069%_) '1)
                          (let* ((_%tab11083%_
                                  (vector-map
                                   (lambda (_%x11080%_)
                                     (if _%x11080%_ (car _%x11080%_) '#f))
                                   _%tab11075%_))
                                 (_%g1108611124%_
                                  (lambda (_%g1108711120%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1108711120%_)))
                                 (_%g1108511255%_
                                  (lambda (_%g1108711128%_)
                                    (if (gx#stx-pair? _%g1108711128%_)
                                        (let ((_%e1109511131%_
                                               (gx#syntax-e _%g1108711128%_)))
                                          (let ((_%hd1109611135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1109511131%_)))
                                                (_%tl1109711138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1109511131%_))))
                                            (if (gx#stx-pair? _%tl1109711138%_)
                                                (let ((_%e1109811141%_
                                                       (gx#syntax-e
                                                        _%tl1109711138%_)))
                                                  (let ((_%hd1109911145%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1109811141%_)))
                                                        (_%tl1110011148%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1109811141%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1110011148%_)
                                                        (let ((_%e1110111151%_
                                                               (gx#syntax-e
                                                                _%tl1110011148%_)))
                                                          (let ((_%hd1110211155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1110111151%_)))
                        (_%tl1110311158%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1110111151%_))))
                    (if (gx#stx-pair? _%tl1110311158%_)
                        (let ((_%e1110411161%_ (gx#syntax-e _%tl1110311158%_)))
                          (let ((_%hd1110511165%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1110411161%_)))
                                (_%tl1110611168%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1110411161%_))))
                            (if (gx#stx-pair? _%hd1110511165%_)
                                (let ((_%e1110711171%_
                                       (gx#syntax-e _%hd1110511165%_)))
                                  (let ((_%hd1110811175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1110711171%_)))
                                        (_%tl1110911178%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1110711171%_))))
                                    (if (gx#stx-null? _%tl1110911178%_)
                                        (if (gx#stx-pair? _%tl1110611168%_)
                                            (let ((_%e1111011181%_
                                                   (gx#syntax-e
                                                    _%tl1110611168%_)))
                                              (let ((_%hd1111111185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1111011181%_)))
                                                    (_%tl1111211188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1111011181%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1111211188%_)
                                                    (let ((_%e1111311191%_
                                                           (gx#syntax-e
                                                            _%tl1111211188%_)))
                                                      (let ((_%hd1111411195%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1111311191%_)))
                    (_%tl1111511198%_
                     (let () (declare (not safe)) (##cdr _%e1111311191%_))))
                (if (gx#stx-pair? _%tl1111511198%_)
                    (let ((_%e1111611201%_ (gx#syntax-e _%tl1111511198%_)))
                      (let ((_%hd1111711205%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1111611201%_)))
                            (_%tl1111811208%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1111611201%_))))
                        (if (gx#stx-null? _%tl1111811208%_)
                            ((lambda (_%L11211%_
                                      _%L11213%_
                                      _%L11214%_
                                      _%L11215%_
                                      _%L11216%_
                                      _%L11217%_
                                      _%L11218%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L11217%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%L11214%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L11216%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L11213%_ '()))
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
                           (cons _%L11218%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%L11218%_
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
                                   (cons _%L11211%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%L11216%_
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
                             (cons _%L11218%_ '())))
                 (cons _%L11215%_ (cons (cons _%L11217%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%L11217%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1111711205%_
                             _%hd1111411195%_
                             _%hd1111111185%_
                             _%hd1110811175%_
                             _%hd1110211155%_
                             _%hd1109911145%_
                             _%hd1109611135%_)
                            (_%g1108611124%_ _%g1108711128%_))))
                    (_%g1108611124%_ _%g1108711128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1108611124%_
                                                     _%g1108711128%_))))
                                            (_%g1108611124%_ _%g1108711128%_))
                                        (_%g1108611124%_ _%g1108711128%_))))
                                (_%g1108611124%_ _%g1108711128%_))))
                        (_%g1108611124%_ _%g1108711128%_))))
                (_%g1108611124%_ _%g1108711128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1108611124%_
                                                 _%g1108711128%_))))
                                        (_%g1108611124%_ _%g1108711128%_)))))
                            (_%g1108511255%_
                             (list _%e11066%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11069%_
                                   _%default11070%_
                                   _%tab11083%_
                                   (vector-length _%tab11083%_))))
                          (let* ((_%g1125911303%_
                                  (lambda (_%g1126011299%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1126011299%_)))
                                 (_%g1125811459%_
                                  (lambda (_%g1126011307%_)
                                    (if (gx#stx-pair? _%g1126011307%_)
                                        (let ((_%e1126811310%_
                                               (gx#syntax-e _%g1126011307%_)))
                                          (let ((_%hd1126911314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1126811310%_)))
                                                (_%tl1127011317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1126811310%_))))
                                            (if (gx#stx-pair? _%tl1127011317%_)
                                                (let ((_%e1127111320%_
                                                       (gx#syntax-e
                                                        _%tl1127011317%_)))
                                                  (let ((_%hd1127211324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1127111320%_)))
                                                        (_%tl1127311327%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1127111320%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1127311327%_)
                                                        (let ((_%e1127411330%_
                                                               (gx#syntax-e
                                                                _%tl1127311327%_)))
                                                          (let ((_%hd1127511334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1127411330%_)))
                        (_%tl1127611337%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1127411330%_))))
                    (if (gx#stx-pair? _%tl1127611337%_)
                        (let ((_%e1127711340%_ (gx#syntax-e _%tl1127611337%_)))
                          (let ((_%hd1127811344%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1127711340%_)))
                                (_%tl1127911347%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1127711340%_))))
                            (if (gx#stx-pair/null? _%hd1127811344%_)
                                (let ((_g21007_
                                       (gx#syntax-split-splice
                                        _%hd1127811344%_
                                        '0)))
                                  (begin
                                    (let ((_g21008_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21007_)
                                                 (##vector-length _g21007_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21008_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21008_)))
                                    (let ((_%target1128011350%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21007_ 0)))
                                          (_%tl1128211353%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21007_ 1))))
                                      (if (gx#stx-null? _%tl1128211353%_)
                                          (letrec ((_%loop1128311356%_
                                                    (lambda (_%hd1128111360%_
                                                             _%dispatch1128711363%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1128111360%_)
                                                          (let ((_%e1128411366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1128111360%_)))
                    (let ((_%lp-hd1128511370%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1128411366%_)))
                          (_%lp-tl1128611373%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1128411366%_))))
                      (_%loop1128311356%_
                       _%lp-tl1128611373%_
                       (cons _%lp-hd1128511370%_ _%dispatch1128711363%_))))
                  (let ((_%dispatch1128811376%_
                         (reverse _%dispatch1128711363%_)))
                    (if (gx#stx-pair? _%tl1127911347%_)
                        (let ((_%e1128911380%_ (gx#syntax-e _%tl1127911347%_)))
                          (let ((_%hd1129011384%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1128911380%_)))
                                (_%tl1129111387%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1128911380%_))))
                            (if (gx#stx-pair? _%tl1129111387%_)
                                (let ((_%e1129211390%_
                                       (gx#syntax-e _%tl1129111387%_)))
                                  (let ((_%hd1129311394%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1129211390%_)))
                                        (_%tl1129411397%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1129211390%_))))
                                    (if (gx#stx-pair? _%tl1129411397%_)
                                        (let ((_%e1129511400%_
                                               (gx#syntax-e _%tl1129411397%_)))
                                          (let ((_%hd1129611404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1129511400%_)))
                                                (_%tl1129711407%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1129511400%_))))
                                            (if (gx#stx-null? _%tl1129711407%_)
                                                ((lambda (_%L11410%_
                                                          _%L11412%_
                                                          _%L11413%_
                                                          _%L11414%_
                                                          _%L11415%_
                                                          _%L11416%_
                                                          _%L11417%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%L11416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%L11413%_ '())))
                                         '()))
                             (cons (cons _%L11415%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L11412%_ '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%L11417%_ '()))
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
                                           (cons _%L11417%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%L11410%_ '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%L11415%_
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
                           (cons _%L11417%_ '())))
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
                                                   (foldr (lambda (_%g1145011453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1145111456%_)
                    (cons _%g1145011453%_ _%g1145111456%_))
                  '()
                  _%L11414%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%L11416%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L11416%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L11416%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1129611404%_
                                                 _%hd1129311394%_
                                                 _%hd1129011384%_
                                                 _%dispatch1128811376%_
                                                 _%hd1127511334%_
                                                 _%hd1127211324%_
                                                 _%hd1126911314%_)
                                                (_%g1125911303%_
                                                 _%g1126011307%_))))
                                        (_%g1125911303%_ _%g1126011307%_))))
                                (_%g1125911303%_ _%g1126011307%_))))
                        (_%g1125911303%_ _%g1126011307%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1128311356%_
                                             _%target1128011350%_
                                             '()))
                                          (_%g1125911303%_ _%g1126011307%_)))))
                                (_%g1125911303%_ _%g1126011307%_))))
                        (_%g1125911303%_ _%g1126011307%_))))
                (_%g1125911303%_ _%g1126011307%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1125911303%_
                                                 _%g1126011307%_))))
                                        (_%g1125911303%_ _%g1126011307%_)))))
                            (_%g1125811459%_
                             (list _%e11066%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11069%_
                                   _%default11070%_
                                   _%tab11075%_
                                   (vector-length _%tab11075%_))))))))
                 (_%max-char9469%_
                  (lambda (_%datums11055%_)
                    (foldl (lambda (_%lst11058%_ _%r11060%_)
                             (foldl (lambda (_%char11062%_ _%r11064%_)
                                      (max (char->integer _%char11062%_)
                                           _%r11064%_))
                                    _%r11060%_
                                    _%lst11058%_))
                           '0
                           _%datums11055%_)))
                 (_%generate-char-dispatch-table9470%_
                  (lambda (_%indexes11034%_)
                    (let* ((_%ixs11040%_
                            (map (lambda (_%x11037%_)
                                   (char->integer (car _%x11037%_)))
                                 _%indexes11034%_))
                           (_%len11043%_ (fx1+ (foldl max '0 _%ixs11040%_)))
                           (_%vec11046%_ (make-vector _%len11043%_ '#f)))
                      (for-each
                       (lambda (_%entry11051%_ _%x11053%_)
                         (vector-set!
                          _%vec11046%_
                          _%x11053%_
                          (cdr _%entry11051%_)))
                       _%indexes11034%_
                       _%ixs11040%_)
                      _%vec11046%_)))
                 (_%simple-char-range?9471%_
                  (lambda (_%tab11010%_)
                    (let ((_%end11013%_ (vector-length _%tab11010%_)))
                      (let _%lp11016%_ ((_%i11019%_ '0))
                        (let ((_%ix11022%_
                               (vector-ref _%tab11010%_ _%i11019%_)))
                          (if _%ix11022%_
                              (let _%lp211025%_ ((_%i11028%_
                                                  (fx1+ _%i11019%_)))
                                (if (fx< _%i11028%_ _%end11013%_)
                                    (let ((_%ix*11031%_
                                           (vector-ref
                                            _%tab11010%_
                                            _%i11028%_)))
                                      (if (eq? _%ix11022%_ _%ix*11031%_)
                                          (_%lp211025%_ (fx1+ _%i11028%_))
                                          '#f))
                                    '#t))
                              (_%lp11016%_ (fx1+ _%i11019%_))))))))
                 (_%char-range-start9472%_
                  (lambda (_%tab11001%_)
                    (let _%lp11004%_ ((_%i11007%_ '0))
                      (if (vector-ref _%tab11001%_ _%i11007%_)
                          _%i11007%_
                          (_%lp11004%_ (fx1+ _%i11007%_))))))
                 (_%generate-char-dispatch9473%_
                  (lambda (_%e10624%_
                           _%datums10626%_
                           _%dispatch10627%_
                           _%default10628%_)
                    (if (< (_%max-char9469%_ _%datums10626%_) '128)
                        (let* ((_%indexes10630%_
                                (_%datum-dispatch-index9465%_ _%datums10626%_))
                               (_%tab10633%_
                                (_%generate-char-dispatch-table9470%_
                                 _%indexes10630%_)))
                          (if (_%simple-char-range?9471%_ _%tab10633%_)
                              (let ((_%start10638%_
                                     (_%char-range-start9472%_ _%tab10633%_))
                                    (_%end10640%_
                                     (vector-length _%tab10633%_)))
                                (let* ((_%g1064210676%_
                                        (lambda (_%g1064310672%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1064310672%_)))
                                       (_%g1064110793%_
                                        (lambda (_%g1064310680%_)
                                          (if (gx#stx-pair? _%g1064310680%_)
                                              (let ((_%e1065010683%_
                                                     (gx#syntax-e
                                                      _%g1064310680%_)))
                                                (let ((_%hd1065110687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1065010683%_)))
                                                      (_%tl1065210690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1065010683%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1065210690%_)
                                                      (let ((_%e1065310693%_
                                                             (gx#syntax-e
                                                              _%tl1065210690%_)))
                                                        (let ((_%hd1065410697%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1065310693%_)))
                      (_%tl1065510700%_
                       (let () (declare (not safe)) (##cdr _%e1065310693%_))))
                  (if (gx#stx-pair? _%tl1065510700%_)
                      (let ((_%e1065610703%_ (gx#syntax-e _%tl1065510700%_)))
                        (let ((_%hd1065710707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1065610703%_)))
                              (_%tl1065810710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1065610703%_))))
                          (if (gx#stx-pair? _%hd1065710707%_)
                              (let ((_%e1065910713%_
                                     (gx#syntax-e _%hd1065710707%_)))
                                (let ((_%hd1066010717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1065910713%_)))
                                      (_%tl1066110720%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1065910713%_))))
                                  (if (gx#stx-null? _%tl1066110720%_)
                                      (if (gx#stx-pair? _%tl1065810710%_)
                                          (let ((_%e1066210723%_
                                                 (gx#syntax-e
                                                  _%tl1065810710%_)))
                                            (let ((_%hd1066310727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1066210723%_)))
                                                  (_%tl1066410730%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1066210723%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1066410730%_)
                                                  (let ((_%e1066510733%_
                                                         (gx#syntax-e
                                                          _%tl1066410730%_)))
                                                    (let ((_%hd1066610737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1066510733%_)))
                                                          (_%tl1066710740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1066510733%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1066710740%_)
                                                          (let ((_%e1066810743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1066710740%_)))
                    (let ((_%hd1066910747%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1066810743%_)))
                          (_%tl1067010750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1066810743%_))))
                      (if (gx#stx-null? _%tl1067010750%_)
                          ((lambda (_%L10753%_
                                    _%L10755%_
                                    _%L10756%_
                                    _%L10757%_
                                    _%L10758%_
                                    _%L10759%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%L10758%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L10756%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%L10759%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%L10759%_ '()))
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
                                       (cons _%L10755%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%L10753%_ '())))
                                 '())))
               (cons _%L10757%_ (cons (cons _%L10758%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%L10758%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1066910747%_
                           _%hd1066610737%_
                           _%hd1066310727%_
                           _%hd1066010717%_
                           _%hd1065410697%_
                           _%hd1065110687%_)
                          (_%g1064210676%_ _%g1064310680%_))))
                  (_%g1064210676%_ _%g1064310680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1064210676%_
                                                   _%g1064310680%_))))
                                          (_%g1064210676%_ _%g1064310680%_))
                                      (_%g1064210676%_ _%g1064310680%_))))
                              (_%g1064210676%_ _%g1064310680%_))))
                      (_%g1064210676%_ _%g1064310680%_))))
              (_%g1064210676%_ _%g1064310680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1064210676%_
                                               _%g1064310680%_)))))
                                  (_%g1064110793%_
                                   (list _%e10624%_
                                         (gx#genident 'default)
                                         _%dispatch10627%_
                                         _%default10628%_
                                         _%start10638%_
                                         _%end10640%_))))
                              (let* ((_%g1079710841%_
                                      (lambda (_%g1079810837%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1079810837%_)))
                                     (_%g1079610997%_
                                      (lambda (_%g1079810845%_)
                                        (if (gx#stx-pair? _%g1079810845%_)
                                            (let ((_%e1080610848%_
                                                   (gx#syntax-e
                                                    _%g1079810845%_)))
                                              (let ((_%hd1080710852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1080610848%_)))
                                                    (_%tl1080810855%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1080610848%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1080810855%_)
                                                    (let ((_%e1080910858%_
                                                           (gx#syntax-e
                                                            _%tl1080810855%_)))
                                                      (let ((_%hd1081010862%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1080910858%_)))
                    (_%tl1081110865%_
                     (let () (declare (not safe)) (##cdr _%e1080910858%_))))
                (if (gx#stx-pair? _%tl1081110865%_)
                    (let ((_%e1081210868%_ (gx#syntax-e _%tl1081110865%_)))
                      (let ((_%hd1081310872%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1081210868%_)))
                            (_%tl1081410875%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1081210868%_))))
                        (if (gx#stx-pair? _%tl1081410875%_)
                            (let ((_%e1081510878%_
                                   (gx#syntax-e _%tl1081410875%_)))
                              (let ((_%hd1081610882%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1081510878%_)))
                                    (_%tl1081710885%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1081510878%_))))
                                (if (gx#stx-pair/null? _%hd1081610882%_)
                                    (let ((_g21009_
                                           (gx#syntax-split-splice
                                            _%hd1081610882%_
                                            '0)))
                                      (begin
                                        (let ((_g21010_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g21009_)
                                                     (##vector-length _g21009_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g21010_ 2)))
                                              (error "Context expects 2 values"
                                                     _g21010_)))
                                        (let ((_%target1081810888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g21009_ 0)))
                                              (_%tl1082010891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g21009_ 1))))
                                          (if (gx#stx-null? _%tl1082010891%_)
                                              (letrec ((_%loop1082110894%_
                                                        (lambda (_%hd1081910898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1082510901%_)
                  (if (gx#stx-pair? _%hd1081910898%_)
                      (let ((_%e1082210904%_ (gx#syntax-e _%hd1081910898%_)))
                        (let ((_%lp-hd1082310908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1082210904%_)))
                              (_%lp-tl1082410911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1082210904%_))))
                          (_%loop1082110894%_
                           _%lp-tl1082410911%_
                           (cons _%lp-hd1082310908%_ _%dispatch1082510901%_))))
                      (let ((_%dispatch1082610914%_
                             (reverse _%dispatch1082510901%_)))
                        (if (gx#stx-pair? _%tl1081710885%_)
                            (let ((_%e1082710918%_
                                   (gx#syntax-e _%tl1081710885%_)))
                              (let ((_%hd1082810922%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1082710918%_)))
                                    (_%tl1082910925%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1082710918%_))))
                                (if (gx#stx-pair? _%tl1082910925%_)
                                    (let ((_%e1083010928%_
                                           (gx#syntax-e _%tl1082910925%_)))
                                      (let ((_%hd1083110932%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1083010928%_)))
                                            (_%tl1083210935%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1083010928%_))))
                                        (if (gx#stx-pair? _%tl1083210935%_)
                                            (let ((_%e1083310938%_
                                                   (gx#syntax-e
                                                    _%tl1083210935%_)))
                                              (let ((_%hd1083410942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1083310938%_)))
                                                    (_%tl1083510945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1083310938%_))))
                                                (if (gx#stx-null?
                                                     _%tl1083510945%_)
                                                    ((lambda (_%L10948%_
                                                              _%L10950%_
                                                              _%L10951%_
                                                              _%L10952%_
                                                              _%L10953%_
                                                              _%L10954%_
                                                              _%L10955%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%L10954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%L10951%_
                                                               '())))
                                             '()))
                                 (cons (cons _%L10953%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%L10950%_ '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%L10955%_ '()))
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
                                         (cons _%L10955%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%L10948%_ '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%L10953%_
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
                                                       (foldr (lambda (_%g1098810991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1098910994%_)
                        (cons _%g1098810991%_ _%g1098910994%_))
                      '()
                      _%L10952%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L10954%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L10954%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%L10954%_ '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1083410942%_
                                                     _%hd1083110932%_
                                                     _%hd1082810922%_
                                                     _%dispatch1082610914%_
                                                     _%hd1081310872%_
                                                     _%hd1081010862%_
                                                     _%hd1080710852%_)
                                                    (_%g1079710841%_
                                                     _%g1079810845%_))))
                                            (_%g1079710841%_
                                             _%g1079810845%_))))
                                    (_%g1079710841%_ _%g1079810845%_))))
                            (_%g1079710841%_ _%g1079810845%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1082110894%_
                                                 _%target1081810888%_
                                                 '()))
                                              (_%g1079710841%_
                                               _%g1079810845%_)))))
                                    (_%g1079710841%_ _%g1079810845%_))))
                            (_%g1079710841%_ _%g1079810845%_))))
                    (_%g1079710841%_ _%g1079810845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1079710841%_
                                                     _%g1079810845%_))))
                                            (_%g1079710841%_
                                             _%g1079810845%_)))))
                                (_%g1079610997%_
                                 (list _%e10624%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10627%_
                                       _%default10628%_
                                       _%tab10633%_
                                       (vector-length _%tab10633%_))))))
                        (_%generate-char-dispatch/hash9474%_
                         _%e10624%_
                         _%datums10626%_
                         _%dispatch10627%_
                         _%default10628%_))))
                 (_%generate-char-dispatch/hash9474%_
                  (lambda (_%e10402%_
                           _%datums10404%_
                           _%dispatch10405%_
                           _%default10406%_)
                    (let* ((_%indexes10408%_
                            (_%datum-dispatch-index9465%_ _%datums10404%_))
                           (_%tab10411%_
                            (_%generate-hash-dispatch-table9467%_
                             _%indexes10408%_
                             char->integer))
                           (_%g1041610460%_
                            (lambda (_%g1041710456%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1041710456%_)))
                           (_%g1041510620%_
                            (lambda (_%g1041710464%_)
                              (if (gx#stx-pair? _%g1041710464%_)
                                  (let ((_%e1042510467%_
                                         (gx#syntax-e _%g1041710464%_)))
                                    (let ((_%hd1042610471%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1042510467%_)))
                                          (_%tl1042710474%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1042510467%_))))
                                      (if (gx#stx-pair? _%tl1042710474%_)
                                          (let ((_%e1042810477%_
                                                 (gx#syntax-e
                                                  _%tl1042710474%_)))
                                            (let ((_%hd1042910481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1042810477%_)))
                                                  (_%tl1043010484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1042810477%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1043010484%_)
                                                  (let ((_%e1043110487%_
                                                         (gx#syntax-e
                                                          _%tl1043010484%_)))
                                                    (let ((_%hd1043210491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1043110487%_)))
                                                          (_%tl1043310494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1043110487%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1043310494%_)
                                                          (let ((_%e1043410497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1043310494%_)))
                    (let ((_%hd1043510501%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1043410497%_)))
                          (_%tl1043610504%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1043410497%_))))
                      (if (gx#stx-pair/null? _%hd1043510501%_)
                          (let ((_g21011_
                                 (gx#syntax-split-splice _%hd1043510501%_ '0)))
                            (begin
                              (let ((_g21012_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21011_)
                                           (##vector-length _g21011_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21012_ 2)))
                                    (error "Context expects 2 values"
                                           _g21012_)))
                              (let ((_%target1043710507%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g21011_ 0)))
                                    (_%tl1043910510%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g21011_ 1))))
                                (if (gx#stx-null? _%tl1043910510%_)
                                    (letrec ((_%loop1044010513%_
                                              (lambda (_%hd1043810517%_
                                                       _%dispatch1044410520%_)
                                                (if (gx#stx-pair?
                                                     _%hd1043810517%_)
                                                    (let ((_%e1044110523%_
                                                           (gx#syntax-e
                                                            _%hd1043810517%_)))
                                                      (let ((_%lp-hd1044210527%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1044110523%_)))
                    (_%lp-tl1044310530%_
                     (let () (declare (not safe)) (##cdr _%e1044110523%_))))
                (_%loop1044010513%_
                 _%lp-tl1044310530%_
                 (cons _%lp-hd1044210527%_ _%dispatch1044410520%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1044510533%_
                                                           (reverse _%dispatch1044410520%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1043610504%_)
                                                          (let ((_%e1044610537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1043610504%_)))
                    (let ((_%hd1044710541%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1044610537%_)))
                          (_%tl1044810544%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1044610537%_))))
                      (if (gx#stx-pair? _%tl1044810544%_)
                          (let ((_%e1044910547%_
                                 (gx#syntax-e _%tl1044810544%_)))
                            (let ((_%hd1045010551%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1044910547%_)))
                                  (_%tl1045110554%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1044910547%_))))
                              (if (gx#stx-pair? _%tl1045110554%_)
                                  (let ((_%e1045210557%_
                                         (gx#syntax-e _%tl1045110554%_)))
                                    (let ((_%hd1045310561%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1045210557%_)))
                                          (_%tl1045410564%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1045210557%_))))
                                      (if (gx#stx-null? _%tl1045410564%_)
                                          ((lambda (_%L10567%_
                                                    _%L10569%_
                                                    _%L10570%_
                                                    _%L10571%_
                                                    _%L10572%_
                                                    _%L10573%_
                                                    _%L10574%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10570%_ '())))
                                   '()))
                       (cons (cons _%L10572%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10569%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%L10574%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%L10574%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%L10567%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%L10572%_
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
                     (cons _%L10574%_ '())))
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
                                             (foldr (lambda (_%g1061110614%_
                                                             _%g1061210617%_)
                                                      (cons _%g1061110614%_
                                                            _%g1061210617%_))
                                                    '()
                                                    _%L10571%_)))
                                 '())))
               (cons (cons _%L10573%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10573%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10573%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1045310561%_
                                           _%hd1045010551%_
                                           _%hd1044710541%_
                                           _%dispatch1044510533%_
                                           _%hd1043210491%_
                                           _%hd1042910481%_
                                           _%hd1042610471%_)
                                          (_%g1041610460%_ _%g1041710464%_))))
                                  (_%g1041610460%_ _%g1041710464%_))))
                          (_%g1041610460%_ _%g1041710464%_))))
                  (_%g1041610460%_ _%g1041710464%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1044010513%_
                                       _%target1043710507%_
                                       '()))
                                    (_%g1041610460%_ _%g1041710464%_)))))
                          (_%g1041610460%_ _%g1041710464%_))))
                  (_%g1041610460%_ _%g1041710464%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1041610460%_
                                                   _%g1041710464%_))))
                                          (_%g1041610460%_ _%g1041710464%_))))
                                  (_%g1041610460%_ _%g1041710464%_)))))
                      (_%g1041510620%_
                       (list _%e10402%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10405%_
                             _%default10406%_
                             _%tab10411%_
                             (vector-length _%tab10411%_))))))
                 (_%min-fixnum9475%_
                  (lambda (_%datums10395%_)
                    (foldl (lambda (_%lst10398%_ _%r10400%_)
                             (foldl min _%r10400%_ _%lst10398%_))
                           ##max-fixnum
                           _%datums10395%_)))
                 (_%max-fixnum9476%_
                  (lambda (_%datums10388%_)
                    (foldl (lambda (_%lst10391%_ _%r10393%_)
                             (foldl max _%r10393%_ _%lst10391%_))
                           ##min-fixnum
                           _%datums10388%_)))
                 (_%generate-fixnum-dispatch-table9477%_
                  (lambda (_%indexes10370%_)
                    (let* ((_%ixs10373%_ (map car _%indexes10370%_))
                           (_%len10376%_ (fx1+ (foldl max '0 _%ixs10373%_)))
                           (_%vec10379%_ (make-vector _%len10376%_ '#f)))
                      (for-each
                       (lambda (_%entry10384%_ _%x10386%_)
                         (vector-set!
                          _%vec10379%_
                          _%x10386%_
                          (cdr _%entry10384%_)))
                       _%indexes10370%_
                       _%ixs10373%_)
                      _%vec10379%_)))
                 (_%generate-fixnum-dispatch9478%_
                  (lambda (_%e10104%_
                           _%datums10106%_
                           _%dispatch10107%_
                           _%default10108%_)
                    (if (and (>= (_%min-fixnum9475%_ _%datums10106%_) '0)
                             (< (_%max-fixnum9476%_ _%datums10106%_) '1024))
                        (let* ((_%indexes10110%_
                                (_%datum-dispatch-index9465%_ _%datums10106%_))
                               (_%tab10113%_
                                (_%generate-fixnum-dispatch-table9477%_
                                 _%indexes10110%_))
                               (_%dense?10116%_
                                (andmap values (vector->list _%tab10113%_)))
                               (_%g1012110165%_
                                (lambda (_%g1012210161%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1012210161%_)))
                               (_%g1012010366%_
                                (lambda (_%g1012210169%_)
                                  (if (gx#stx-pair? _%g1012210169%_)
                                      (let ((_%e1013010172%_
                                             (gx#syntax-e _%g1012210169%_)))
                                        (let ((_%hd1013110176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1013010172%_)))
                                              (_%tl1013210179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1013010172%_))))
                                          (if (gx#stx-pair? _%tl1013210179%_)
                                              (let ((_%e1013310182%_
                                                     (gx#syntax-e
                                                      _%tl1013210179%_)))
                                                (let ((_%hd1013410186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1013310182%_)))
                                                      (_%tl1013510189%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1013310182%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1013510189%_)
                                                      (let ((_%e1013610192%_
                                                             (gx#syntax-e
                                                              _%tl1013510189%_)))
                                                        (let ((_%hd1013710196%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1013610192%_)))
                      (_%tl1013810199%_
                       (let () (declare (not safe)) (##cdr _%e1013610192%_))))
                  (if (gx#stx-pair? _%tl1013810199%_)
                      (let ((_%e1013910202%_ (gx#syntax-e _%tl1013810199%_)))
                        (let ((_%hd1014010206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1013910202%_)))
                              (_%tl1014110209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1013910202%_))))
                          (if (gx#stx-pair/null? _%hd1014010206%_)
                              (let ((_g21013_
                                     (gx#syntax-split-splice
                                      _%hd1014010206%_
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
                                  (let ((_%target1014210212%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g21013_ 0)))
                                        (_%tl1014410215%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g21013_ 1))))
                                    (if (gx#stx-null? _%tl1014410215%_)
                                        (letrec ((_%loop1014510218%_
                                                  (lambda (_%hd1014310222%_
                                                           _%dispatch1014910225%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1014310222%_)
                                                        (let ((_%e1014610228%_
                                                               (gx#syntax-e
                                                                _%hd1014310222%_)))
                                                          (let ((_%lp-hd1014710232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1014610228%_)))
                        (_%lp-tl1014810235%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1014610228%_))))
                    (_%loop1014510218%_
                     _%lp-tl1014810235%_
                     (cons _%lp-hd1014710232%_ _%dispatch1014910225%_))))
                (let ((_%dispatch1015010238%_
                       (reverse _%dispatch1014910225%_)))
                  (if (gx#stx-pair? _%tl1014110209%_)
                      (let ((_%e1015110242%_ (gx#syntax-e _%tl1014110209%_)))
                        (let ((_%hd1015210246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1015110242%_)))
                              (_%tl1015310249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1015110242%_))))
                          (if (gx#stx-pair? _%tl1015310249%_)
                              (let ((_%e1015410252%_
                                     (gx#syntax-e _%tl1015310249%_)))
                                (let ((_%hd1015510256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1015410252%_)))
                                      (_%tl1015610259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1015410252%_))))
                                  (if (gx#stx-pair? _%tl1015610259%_)
                                      (let ((_%e1015710262%_
                                             (gx#syntax-e _%tl1015610259%_)))
                                        (let ((_%hd1015810266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1015710262%_)))
                                              (_%tl1015910269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1015710262%_))))
                                          (if (gx#stx-null? _%tl1015910269%_)
                                              ((lambda (_%L10272%_
                                                        _%L10274%_
                                                        _%L10275%_
                                                        _%L10276%_
                                                        _%L10277%_
                                                        _%L10278%_
                                                        _%L10279%_)
                                                 (let* ((_%g1031810326%_
                                                         (lambda (_%g1031910322%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1031910322%_)))
                                                        (_%g1031710346%_
                                                         (lambda (_%g1031910330%_)
                                                           ((lambda (_%L10333%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%L10278%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%L10275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%L10277%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L10274%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%L10279%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%L10279%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%L10279%_
                                                            (cons _%L10272%_
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
                          (cons _%L10277%_ (cons _%L10279%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L10333%_ '())))
                                    (cons (cons _%L10278%_ '()) '()))))
                  (cons (cons _%L10278%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1031910330%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1031710346%_
                                                    (if _%dense?10116%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1034910352%_ _%g1035010355%_)
                                     (cons _%g1034910352%_ _%g1035010355%_))
                                   '()
                                   _%L10276%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1035710360%_
                                                              _%g1035810363%_)
                                                       (cons _%g1035710360%_
                                                             _%g1035810363%_))
                                                     '()
                                                     _%L10276%_)))
                                  (cons (cons _%L10278%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1015810266%_
                                               _%hd1015510256%_
                                               _%hd1015210246%_
                                               _%dispatch1015010238%_
                                               _%hd1013710196%_
                                               _%hd1013410186%_
                                               _%hd1013110176%_)
                                              (_%g1012110165%_
                                               _%g1012210169%_))))
                                      (_%g1012110165%_ _%g1012210169%_))))
                              (_%g1012110165%_ _%g1012210169%_))))
                      (_%g1012110165%_ _%g1012210169%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1014510218%_
                                           _%target1014210212%_
                                           '()))
                                        (_%g1012110165%_ _%g1012210169%_)))))
                              (_%g1012110165%_ _%g1012210169%_))))
                      (_%g1012110165%_ _%g1012210169%_))))
              (_%g1012110165%_ _%g1012210169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1012110165%_
                                               _%g1012210169%_))))
                                      (_%g1012110165%_ _%g1012210169%_)))))
                          (_%g1012010366%_
                           (list _%e10104%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10107%_
                                 _%default10108%_
                                 _%tab10113%_
                                 (vector-length _%tab10113%_))))
                        (_%generate-fixnum-dispatch/hash9479%_
                         _%e10104%_
                         _%datums10106%_
                         _%dispatch10107%_
                         _%default10108%_))))
                 (_%generate-fixnum-dispatch/hash9479%_
                  (lambda (_%e9882%_
                           _%datums9884%_
                           _%dispatch9885%_
                           _%default9886%_)
                    (let* ((_%indexes9888%_
                            (_%datum-dispatch-index9465%_ _%datums9884%_))
                           (_%tab9891%_
                            (_%generate-hash-dispatch-table9467%_
                             _%indexes9888%_
                             values))
                           (_%g98969940%_
                            (lambda (_%g98979936%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g98979936%_)))
                           (_%g989510100%_
                            (lambda (_%g98979944%_)
                              (if (gx#stx-pair? _%g98979944%_)
                                  (let ((_%e99059947%_
                                         (gx#syntax-e _%g98979944%_)))
                                    (let ((_%hd99069951%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e99059947%_)))
                                          (_%tl99079954%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e99059947%_))))
                                      (if (gx#stx-pair? _%tl99079954%_)
                                          (let ((_%e99089957%_
                                                 (gx#syntax-e _%tl99079954%_)))
                                            (let ((_%hd99099961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e99089957%_)))
                                                  (_%tl99109964%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e99089957%_))))
                                              (if (gx#stx-pair? _%tl99109964%_)
                                                  (let ((_%e99119967%_
                                                         (gx#syntax-e
                                                          _%tl99109964%_)))
                                                    (let ((_%hd99129971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e99119967%_)))
                                                          (_%tl99139974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e99119967%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl99139974%_)
                                                          (let ((_%e99149977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99139974%_)))
                    (let ((_%hd99159981%_
                           (let () (declare (not safe)) (##car _%e99149977%_)))
                          (_%tl99169984%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e99149977%_))))
                      (if (gx#stx-pair/null? _%hd99159981%_)
                          (let ((_g21015_
                                 (gx#syntax-split-splice _%hd99159981%_ '0)))
                            (begin
                              (let ((_g21016_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21015_)
                                           (##vector-length _g21015_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21016_ 2)))
                                    (error "Context expects 2 values"
                                           _g21016_)))
                              (let ((_%target99179987%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g21015_ 0)))
                                    (_%tl99199990%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g21015_ 1))))
                                (if (gx#stx-null? _%tl99199990%_)
                                    (letrec ((_%loop99209993%_
                                              (lambda (_%hd99189997%_
                                                       _%dispatch992410000%_)
                                                (if (gx#stx-pair?
                                                     _%hd99189997%_)
                                                    (let ((_%e992110003%_
                                                           (gx#syntax-e
                                                            _%hd99189997%_)))
                                                      (let ((_%lp-hd992210007%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e992110003%_)))
                    (_%lp-tl992310010%_
                     (let () (declare (not safe)) (##cdr _%e992110003%_))))
                (_%loop99209993%_
                 _%lp-tl992310010%_
                 (cons _%lp-hd992210007%_ _%dispatch992410000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch992510013%_
                                                           (reverse _%dispatch992410000%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl99169984%_)
                                                          (let ((_%e992610017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99169984%_)))
                    (let ((_%hd992710021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e992610017%_)))
                          (_%tl992810024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e992610017%_))))
                      (if (gx#stx-pair? _%tl992810024%_)
                          (let ((_%e992910027%_ (gx#syntax-e _%tl992810024%_)))
                            (let ((_%hd993010031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e992910027%_)))
                                  (_%tl993110034%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e992910027%_))))
                              (if (gx#stx-pair? _%tl993110034%_)
                                  (let ((_%e993210037%_
                                         (gx#syntax-e _%tl993110034%_)))
                                    (let ((_%hd993310041%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e993210037%_)))
                                          (_%tl993410044%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e993210037%_))))
                                      (if (gx#stx-null? _%tl993410044%_)
                                          ((lambda (_%L10047%_
                                                    _%L10049%_
                                                    _%L10050%_
                                                    _%L10051%_
                                                    _%L10052%_
                                                    _%L10053%_
                                                    _%L10054%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10050%_ '())))
                                   '()))
                       (cons (cons _%L10052%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10049%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%L10054%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%L10054%_ (cons _%L10047%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%L10052%_
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
                     (cons _%L10054%_ '())))
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
                                             (foldr (lambda (_%g1009110094%_
                                                             _%g1009210097%_)
                                                      (cons _%g1009110094%_
                                                            _%g1009210097%_))
                                                    '()
                                                    _%L10051%_)))
                                 '())))
               (cons (cons _%L10053%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10053%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10053%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd993310041%_
                                           _%hd993010031%_
                                           _%hd992710021%_
                                           _%dispatch992510013%_
                                           _%hd99129971%_
                                           _%hd99099961%_
                                           _%hd99069951%_)
                                          (_%g98969940%_ _%g98979944%_))))
                                  (_%g98969940%_ _%g98979944%_))))
                          (_%g98969940%_ _%g98979944%_))))
                  (_%g98969940%_ _%g98979944%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop99209993%_
                                       _%target99179987%_
                                       '()))
                                    (_%g98969940%_ _%g98979944%_)))))
                          (_%g98969940%_ _%g98979944%_))))
                  (_%g98969940%_ _%g98979944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g98969940%_
                                                   _%g98979944%_))))
                                          (_%g98969940%_ _%g98979944%_))))
                                  (_%g98969940%_ _%g98979944%_)))))
                      (_%g989510100%_
                       (list _%e9882%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9885%_
                             _%default9886%_
                             _%tab9891%_
                             (vector-length _%tab9891%_))))))
                 (_%generate-generic-dispatch9480%_
                  (lambda (_%e9618%_
                           _%datums9620%_
                           _%dispatch9621%_
                           _%default9622%_)
                    (let ((_g21017_
                           (if (_%eq-datums?9463%_ _%datums9620%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9624%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21017_ 0)))
                              (_%hashf9626%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21017_ 1)))
                              (_%eqf9627%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21017_ 2))))
                          (let* ((_%indexes9629%_
                                  (_%datum-dispatch-index9465%_
                                   _%datums9620%_))
                                 (_%tab9632%_
                                  (_%generate-hash-dispatch-table9467%_
                                   _%indexes9629%_
                                   _%hash-e9624%_))
                                 (_%g96379689%_
                                  (lambda (_%g96389685%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g96389685%_)))
                                 (_%g96369878%_
                                  (lambda (_%g96389693%_)
                                    (if (gx#stx-pair? _%g96389693%_)
                                        (let ((_%e96489696%_
                                               (gx#syntax-e _%g96389693%_)))
                                          (let ((_%hd96499700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96489696%_)))
                                                (_%tl96509703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96489696%_))))
                                            (if (gx#stx-pair? _%tl96509703%_)
                                                (let ((_%e96519706%_
                                                       (gx#syntax-e
                                                        _%tl96509703%_)))
                                                  (let ((_%hd96529710%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96519706%_)))
                                                        (_%tl96539713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96519706%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96539713%_)
                                                        (let ((_%e96549716%_
                                                               (gx#syntax-e
                                                                _%tl96539713%_)))
                                                          (let ((_%hd96559720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96549716%_)))
                        (_%tl96569723%_
                         (let () (declare (not safe)) (##cdr _%e96549716%_))))
                    (if (gx#stx-pair? _%tl96569723%_)
                        (let ((_%e96579726%_ (gx#syntax-e _%tl96569723%_)))
                          (let ((_%hd96589730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96579726%_)))
                                (_%tl96599733%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96579726%_))))
                            (if (gx#stx-pair/null? _%hd96589730%_)
                                (let ((_g21018_
                                       (gx#syntax-split-splice
                                        _%hd96589730%_
                                        '0)))
                                  (begin
                                    (let ((_g21019_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21018_)
                                                 (##vector-length _g21018_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21019_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21019_)))
                                    (let ((_%target96609736%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21018_ 0)))
                                          (_%tl96629739%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21018_ 1))))
                                      (if (gx#stx-null? _%tl96629739%_)
                                          (letrec ((_%loop96639742%_
                                                    (lambda (_%hd96619746%_
                                                             _%dispatch96679749%_)
                                                      (if (gx#stx-pair?
                                                           _%hd96619746%_)
                                                          (let ((_%e96649752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd96619746%_)))
                    (let ((_%lp-hd96659756%_
                           (let () (declare (not safe)) (##car _%e96649752%_)))
                          (_%lp-tl96669759%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e96649752%_))))
                      (_%loop96639742%_
                       _%lp-tl96669759%_
                       (cons _%lp-hd96659756%_ _%dispatch96679749%_))))
                  (let ((_%dispatch96689762%_ (reverse _%dispatch96679749%_)))
                    (if (gx#stx-pair? _%tl96599733%_)
                        (let ((_%e96699766%_ (gx#syntax-e _%tl96599733%_)))
                          (let ((_%hd96709770%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96699766%_)))
                                (_%tl96719773%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96699766%_))))
                            (if (gx#stx-pair? _%tl96719773%_)
                                (let ((_%e96729776%_
                                       (gx#syntax-e _%tl96719773%_)))
                                  (let ((_%hd96739780%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e96729776%_)))
                                        (_%tl96749783%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e96729776%_))))
                                    (if (gx#stx-pair? _%tl96749783%_)
                                        (let ((_%e96759786%_
                                               (gx#syntax-e _%tl96749783%_)))
                                          (let ((_%hd96769790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96759786%_)))
                                                (_%tl96779793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96759786%_))))
                                            (if (gx#stx-pair? _%tl96779793%_)
                                                (let ((_%e96789796%_
                                                       (gx#syntax-e
                                                        _%tl96779793%_)))
                                                  (let ((_%hd96799800%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96789796%_)))
                                                        (_%tl96809803%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96789796%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96809803%_)
                                                        (let ((_%e96819806%_
                                                               (gx#syntax-e
                                                                _%tl96809803%_)))
                                                          (let ((_%hd96829810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96819806%_)))
                        (_%tl96839813%_
                         (let () (declare (not safe)) (##cdr _%e96819806%_))))
                    (if (gx#stx-null? _%tl96839813%_)
                        ((lambda (_%L9816%_
                                  _%L9818%_
                                  _%L9819%_
                                  _%L9820%_
                                  _%L9821%_
                                  _%L9822%_
                                  _%L9823%_
                                  _%L9824%_
                                  _%L9825%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%L9824%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L9821%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L9823%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%L9820%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%L9818%_ (cons _%L9825%_ '())) '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%L9819%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%L9823%_
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
                                               (cons (cons _%L9816%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%L9825%_ '())))
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
                                                 (foldr (lambda (_%g98699872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g98709875%_)
                  (cons _%g98699872%_ _%g98709875%_))
                '()
                _%L9822%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%L9824%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L9824%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd96829810%_
                         _%hd96799800%_
                         _%hd96769790%_
                         _%hd96739780%_
                         _%hd96709770%_
                         _%dispatch96689762%_
                         _%hd96559720%_
                         _%hd96529710%_
                         _%hd96499700%_)
                        (_%g96379689%_ _%g96389693%_))))
                (_%g96379689%_ _%g96389693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96379689%_
                                                 _%g96389693%_))))
                                        (_%g96379689%_ _%g96389693%_))))
                                (_%g96379689%_ _%g96389693%_))))
                        (_%g96379689%_ _%g96389693%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop96639742%_
                                             _%target96609736%_
                                             '()))
                                          (_%g96379689%_ _%g96389693%_)))))
                                (_%g96379689%_ _%g96389693%_))))
                        (_%g96379689%_ _%g96389693%_))))
                (_%g96379689%_ _%g96389693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96379689%_
                                                 _%g96389693%_))))
                                        (_%g96379689%_ _%g96389693%_)))))
                            (_%g96369878%_
                             (list _%e9618%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9621%_
                                   _%default9622%_
                                   _%tab9632%_
                                   (vector-length _%tab9632%_)
                                   _%hashf9626%_
                                   _%eqf9627%_)))))))))
          (let* ((_%g94829506%_
                  (lambda (_%g94839502%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g94839502%_)))
                 (_%g94819614%_
                  (lambda (_%g94839510%_)
                    (if (gx#stx-pair? _%g94839510%_)
                        (let ((_%e94869513%_ (gx#syntax-e _%g94839510%_)))
                          (let ((_%hd94879517%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94869513%_)))
                                (_%tl94889520%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94869513%_))))
                            (if (gx#stx-pair? _%tl94889520%_)
                                (let ((_%e94899523%_
                                       (gx#syntax-e _%tl94889520%_)))
                                  (let ((_%hd94909527%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e94899523%_)))
                                        (_%tl94919530%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e94899523%_))))
                                    (if (gx#stx-pair/null? _%tl94919530%_)
                                        (let ((_g21020_
                                               (gx#syntax-split-splice
                                                _%tl94919530%_
                                                '0)))
                                          (begin
                                            (let ((_g21021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21020_)
                                                         (##vector-length
                                                          _g21020_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21021_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21021_)))
                                            (let ((_%target94929533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g21020_
                                                      0)))
                                                  (_%tl94949536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g21020_
                                                      1))))
                                              (if (gx#stx-null? _%tl94949536%_)
                                                  (letrec ((_%loop94959539%_
                                                            (lambda (_%hd94939543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause94999546%_)
                      (if (gx#stx-pair? _%hd94939543%_)
                          (let ((_%e94969549%_ (gx#syntax-e _%hd94939543%_)))
                            (let ((_%lp-hd94979553%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e94969549%_)))
                                  (_%lp-tl94989556%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e94969549%_))))
                              (_%loop94959539%_
                               _%lp-tl94989556%_
                               (cons _%lp-hd94979553%_ _%clause94999546%_))))
                          (let ((_%clause95009559%_
                                 (reverse _%clause94999546%_)))
                            ((lambda (_%L9563%_ _%L9565%_)
                               (let ((_g21022_
                                      (_%parse-clauses9456%_
                                       _%L9565%_
                                       (foldr (lambda (_%g95839586%_
                                                       _%g95849589%_)
                                                (cons _%g95839586%_
                                                      _%g95849589%_))
                                              '()
                                              _%L9563%_))))
                                 (begin
                                   (let ((_g21023_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g21022_)
                                                (##vector-length _g21022_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g21023_ 3)))
                                         (error "Context expects 3 values"
                                                _g21023_)))
                                   (let ((_%datums9592%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g21022_ 0)))
                                         (_%dispatch9594%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g21022_ 1)))
                                         (_%default9595%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g21022_ 2))))
                                     (let ((_%datum-count9597%_
                                            (_%count-datums9459%_
                                             _%datums9592%_)))
                                       (if (< _%datum-count9597%_ '6)
                                           (_%generate-simple-case9464%_
                                            _%L9565%_
                                            _%datums9592%_
                                            _%dispatch9594%_
                                            _%default9595%_)
                                           (if (_%char-datums?9461%_
                                                _%datums9592%_)
                                               (_%generate-char-dispatch9473%_
                                                _%L9565%_
                                                _%datums9592%_
                                                _%dispatch9594%_
                                                _%default9595%_)
                                               (if (_%fixnum-datums?9462%_
                                                    _%datums9592%_)
                                                   (_%generate-fixnum-dispatch9478%_
                                                    _%L9565%_
                                                    _%datums9592%_
                                                    _%dispatch9594%_
                                                    _%default9595%_)
                                                   (if (< _%datum-count9597%_
                                                          '12)
                                                       (_%generate-simple-case9464%_
                                                        _%L9565%_
                                                        _%datums9592%_
                                                        _%dispatch9594%_
                                                        _%default9595%_)
                                                       (if (_%symbolic-datums?9460%_
                                                            _%datums9592%_)
                                                           (_%generate-symbolic-dispatch9468%_
                                                            _%L9565%_
                                                            _%datums9592%_
                                                            _%dispatch9594%_
                                                            _%default9595%_)
                                                           (_%generate-generic-dispatch9480%_
                                                            _%L9565%_
                                                            _%datums9592%_
                                                            _%dispatch9594%_
                                                            _%default9595%_)))))))))))
                             _%clause95009559%_
                             _%hd94909527%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop94959539%_
                                                     _%target94929533%_
                                                     '()))
                                                  (_%g94829506%_
                                                   _%g94839510%_)))))
                                        (_%g94829506%_ _%g94839510%_))))
                                (_%g94829506%_ _%g94839510%_))))
                        (_%g94829506%_ _%g94839510%_)))))
            (_%g94819614%_ _%stx9453%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12516%_)
        (let* ((_%g1251912537%_
                (lambda (_%g1252012533%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1252012533%_)))
               (_%g1251812609%_
                (lambda (_%g1252012541%_)
                  (if (gx#stx-pair? _%g1252012541%_)
                      (let ((_%e1252312544%_ (gx#syntax-e _%g1252012541%_)))
                        (let ((_%hd1252412548%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1252312544%_)))
                              (_%tl1252512551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1252312544%_))))
                          (if (gx#stx-pair? _%tl1252512551%_)
                              (let ((_%e1252612554%_
                                     (gx#syntax-e _%tl1252512551%_)))
                                (let ((_%hd1252712558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1252612554%_)))
                                      (_%tl1252812561%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1252612554%_))))
                                  (if (gx#stx-pair? _%tl1252812561%_)
                                      (let ((_%e1252912564%_
                                             (gx#syntax-e _%tl1252812561%_)))
                                        (let ((_%hd1253012568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1252912564%_)))
                                              (_%tl1253112571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1252912564%_))))
                                          (if (gx#stx-null? _%tl1253112571%_)
                                              ((lambda (_%L12574%_ _%L12576%_)
                                                 (let ((_%datum-e12592%_
                                                        (gx#stx-e _%L12576%_)))
                                                   (if (or (symbol? _%datum-e12592%_)
                                                           (keyword?
                                                            _%datum-e12592%_)
                                                           (immediate?
                                                            _%datum-e12592%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L12576%_ '()))
                           (cons _%L12574%_ '())))
               (if (number? _%datum-e12592%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12576%_ '()))
                               (cons _%L12574%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12576%_ '()))
                               (cons _%L12574%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1253012568%_
                                               _%hd1252712558%_)
                                              (_%g1251912537%_
                                               _%g1252012541%_))))
                                      (_%g1251912537%_ _%g1252012541%_))))
                              (_%g1251912537%_ _%g1252012541%_))))
                      (_%g1251912537%_ _%g1252012541%_)))))
          (_%g1251812609%_ _%stx12516%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12613%_)
        (let* ((_%g1261712641%_
                (lambda (_%g1261812637%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1261812637%_)))
               (_%g1261612726%_
                (lambda (_%g1261812645%_)
                  (if (gx#stx-pair? _%g1261812645%_)
                      (let ((_%e1262112648%_ (gx#syntax-e _%g1261812645%_)))
                        (let ((_%hd1262212652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1262112648%_)))
                              (_%tl1262312655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1262112648%_))))
                          (if (gx#stx-pair? _%tl1262312655%_)
                              (let ((_%e1262412658%_
                                     (gx#syntax-e _%tl1262312655%_)))
                                (let ((_%hd1262512662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1262412658%_)))
                                      (_%tl1262612665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1262412658%_))))
                                  (if (gx#stx-pair/null? _%tl1262612665%_)
                                      (let ((_g21024_
                                             (gx#syntax-split-splice
                                              _%tl1262612665%_
                                              '0)))
                                        (begin
                                          (let ((_g21025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21024_)
                                                       (##vector-length
                                                        _g21024_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21025_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21025_)))
                                          (let ((_%target1262712668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21024_ 0)))
                                                (_%tl1262912671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21024_ 1))))
                                            (if (gx#stx-null? _%tl1262912671%_)
                                                (letrec ((_%loop1263012674%_
                                                          (lambda (_%hd1262812678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1263412681%_)
                    (if (gx#stx-pair? _%hd1262812678%_)
                        (let ((_%e1263112684%_ (gx#syntax-e _%hd1262812678%_)))
                          (let ((_%lp-hd1263212688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1263112684%_)))
                                (_%lp-tl1263312691%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1263112684%_))))
                            (_%loop1263012674%_
                             _%lp-tl1263312691%_
                             (cons _%lp-hd1263212688%_ _%K1263412681%_))))
                        (let ((_%K1263512694%_ (reverse _%K1263412681%_)))
                          ((lambda (_%L12698%_ _%L12700%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%L12700%_
                                               (foldr (lambda (_%g1271712720%_
                                                               _%g1271812723%_)
                                                        (cons _%g1271712720%_
                                                              _%g1271812723%_))
                                                      '()
                                                      _%L12698%_)))))
                           _%K1263512694%_
                           _%hd1262512662%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1263012674%_
                                                   _%target1262712668%_
                                                   '()))
                                                (_%g1261712641%_
                                                 _%g1261812645%_)))))
                                      (_%g1261712641%_ _%g1261812645%_))))
                              (_%g1261712641%_ _%g1261812645%_))))
                      (_%g1261712641%_ _%g1261812645%_)))))
          (_%g1261612726%_ _%$stx12613%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12731%_)
        (let* ((_%__stx1980419805%_ _%stx12731%_)
               (_%g1273812834%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1980419805%_))))
          (let ((_%__kont1980719808%_
                 (lambda (_%L13311%_ _%L13313%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1980919810%_
                 (lambda (_%L13253%_ _%L13255%_ _%L13256%_) _%L13253%_))
                (_%__kont1981119812%_
                 (lambda (_%L13150%_ _%L13152%_ _%L13153%_ _%L13154%_)
                   (let* ((_%g1317513183%_
                           (lambda (_%g1317613179%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1317613179%_)))
                          (_%g1317413202%_
                           (lambda (_%g1317613187%_)
                             ((lambda (_%L13190%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%L13153%_
                                                        (cons _%L13190%_ '())))
                                            (cons _%L13152%_
                                                  (cons _%L13150%_ '())))))
                              _%g1317613187%_))))
                     (_%g1317413202%_ (gx#stx-e _%L13154%_)))))
                (_%__kont1981319814%_
                 (lambda (_%L13000%_
                          _%L13002%_
                          _%L13003%_
                          _%L13004%_
                          _%L13005%_)
                   (let* ((_%g1302913044%_
                           (lambda (_%g1303013040%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1303013040%_)))
                          (_%g1302813089%_
                           (lambda (_%g1303013048%_)
                             (if (gx#stx-pair? _%g1303013048%_)
                                 (let ((_%e1303313051%_
                                        (gx#syntax-e _%g1303013048%_)))
                                   (let ((_%hd1303413055%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1303313051%_)))
                                         (_%tl1303513058%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1303313051%_))))
                                     (if (gx#stx-pair? _%tl1303513058%_)
                                         (let ((_%e1303613061%_
                                                (gx#syntax-e
                                                 _%tl1303513058%_)))
                                           (let ((_%hd1303713065%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1303613061%_)))
                                                 (_%tl1303813068%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1303613061%_))))
                                             (if (gx#stx-null?
                                                  _%tl1303813068%_)
                                                 ((lambda (_%L13071%_
                                                           _%L13073%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%L13004%_ (cons _%L13073%_ '())))
                        (cons _%L13003%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%L13004%_
                                                            (cons _%L13071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L13002%_
                                                      (cons _%L13000%_ '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1303713065%_
                                                  _%hd1303413055%_)
                                                 (_%g1302913044%_
                                                  _%g1303013048%_))))
                                         (_%g1302913044%_ _%g1303013048%_))))
                                 (_%g1302913044%_ _%g1303013048%_)))))
                     (_%g1302813089%_
                      (list (gx#stx-e _%L13005%_)
                            (fx1+ (gx#stx-e _%L13005%_)))))))
                (_%__kont1981519816%_
                 (lambda (_%L12901%_ _%L12903%_ _%L12904%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%L12904%_
                               (cons _%L12903%_
                                     (foldr (lambda (_%g1292412927%_
                                                     _%g1292512930%_)
                                              (cons _%g1292412927%_
                                                    _%g1292512930%_))
                                            '()
                                            _%L12901%_)))))))
            (let ((_%__match1996119962%_
                   (lambda (_%e1281112841%_
                            _%hd1281212845%_
                            _%tl1281312848%_
                            _%e1281412851%_
                            _%hd1281512855%_
                            _%tl1281612858%_
                            _%e1281712861%_
                            _%hd1281812865%_
                            _%tl1281912868%_
                            _%__splice1981719818%_
                            _%target1282012871%_
                            _%tl1282212874%_)
                     (letrec ((_%loop1282312877%_
                               (lambda (_%hd1282112881%_ _%K1282712884%_)
                                 (if (gx#stx-pair? _%hd1282112881%_)
                                     (let ((_%e1282412887%_
                                            (gx#syntax-e _%hd1282112881%_)))
                                       (let ((_%lp-tl1282612894%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1282412887%_)))
                                             (_%lp-hd1282512891%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1282412887%_))))
                                         (_%loop1282312877%_
                                          _%lp-tl1282612894%_
                                          (cons _%lp-hd1282512891%_
                                                _%K1282712884%_))))
                                     (let ((_%K1282812897%_
                                            (reverse _%K1282712884%_)))
                                       (_%__kont1981519816%_
                                        _%K1282812897%_
                                        _%hd1281812865%_
                                        _%hd1281512855%_))))))
                       (_%loop1282312877%_ _%target1282012871%_ '())))))
              (if (gx#stx-pair? _%__stx1980419805%_)
                  (let ((_%e1274213281%_ (gx#syntax-e _%__stx1980419805%_)))
                    (let ((_%tl1274413288%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1274213281%_)))
                          (_%hd1274313285%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1274213281%_))))
                      (if (gx#stx-pair? _%tl1274413288%_)
                          (let ((_%e1274513291%_
                                 (gx#syntax-e _%tl1274413288%_)))
                            (let ((_%tl1274713298%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1274513291%_)))
                                  (_%hd1274613295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1274513291%_))))
                              (if (gx#stx-pair? _%tl1274713298%_)
                                  (let ((_%e1274813301%_
                                         (gx#syntax-e _%tl1274713298%_)))
                                    (let ((_%tl1275013308%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1274813301%_)))
                                          (_%hd1274913305%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1274813301%_))))
                                      (if (gx#stx-null? _%tl1275013308%_)
                                          (_%__kont1980719808%_
                                           _%hd1274913305%_
                                           _%hd1274613295%_)
                                          (if (gx#stx-pair? _%tl1275013308%_)
                                              (let ((_%e1276313243%_
                                                     (gx#syntax-e
                                                      _%tl1275013308%_)))
                                                (let ((_%tl1276513250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1276313243%_)))
                                                      (_%hd1276413247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1276313243%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1276513250%_)
                                                      (_%__kont1980919810%_
                                                       _%hd1276413247%_
                                                       _%hd1274913305%_
                                                       _%hd1274613295%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1276513250%_)
                                                          (let ((_%e1278213140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1276513250%_)))
                    (let ((_%tl1278413147%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1278213140%_)))
                          (_%hd1278313144%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1278213140%_))))
                      (if (gx#stx-null? _%tl1278413147%_)
                          (_%__kont1981119812%_
                           _%hd1278313144%_
                           _%hd1276413247%_
                           _%hd1274913305%_
                           _%hd1274613295%_)
                          (if (gx#stx-pair? _%tl1278413147%_)
                              (let ((_%e1280512990%_
                                     (gx#syntax-e _%tl1278413147%_)))
                                (let ((_%tl1280712997%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1280512990%_)))
                                      (_%hd1280612994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1280512990%_))))
                                  (if (gx#stx-null? _%tl1280712997%_)
                                      (_%__kont1981319814%_
                                       _%hd1280612994%_
                                       _%hd1278313144%_
                                       _%hd1276413247%_
                                       _%hd1274913305%_
                                       _%hd1274613295%_)
                                      (if (gx#stx-pair/null? _%tl1275013308%_)
                                          (let ((_%__splice1981719818%_
                                                 (gx#syntax-split-splice
                                                  _%tl1275013308%_
                                                  '0)))
                                            (let ((_%tl1282212874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1981719818%_
                                                      '1)))
                                                  (_%target1282012871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1981719818%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1282212874%_)
                                                  (_%__match1996119962%_
                                                   _%e1274213281%_
                                                   _%hd1274313285%_
                                                   _%tl1274413288%_
                                                   _%e1274513291%_
                                                   _%hd1274613295%_
                                                   _%tl1274713298%_
                                                   _%e1274813301%_
                                                   _%hd1274913305%_
                                                   _%tl1275013308%_
                                                   _%__splice1981719818%_
                                                   _%target1282012871%_
                                                   _%tl1282212874%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1273812834%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1273812834%_))))))
                              (if (gx#stx-pair/null? _%tl1275013308%_)
                                  (let ((_%__splice1981719818%_
                                         (gx#syntax-split-splice
                                          _%tl1275013308%_
                                          '0)))
                                    (let ((_%tl1282212874%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1981719818%_
                                              '1)))
                                          (_%target1282012871%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1981719818%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1282212874%_)
                                          (_%__match1996119962%_
                                           _%e1274213281%_
                                           _%hd1274313285%_
                                           _%tl1274413288%_
                                           _%e1274513291%_
                                           _%hd1274613295%_
                                           _%tl1274713298%_
                                           _%e1274813301%_
                                           _%hd1274913305%_
                                           _%tl1275013308%_
                                           _%__splice1981719818%_
                                           _%target1282012871%_
                                           _%tl1282212874%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1273812834%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1273812834%_)))))))
                  (if (gx#stx-pair/null? _%tl1275013308%_)
                      (let ((_%__splice1981719818%_
                             (gx#syntax-split-splice _%tl1275013308%_ '0)))
                        (let ((_%tl1282212874%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1981719818%_ '1)))
                              (_%target1282012871%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1981719818%_ '0))))
                          (if (gx#stx-null? _%tl1282212874%_)
                              (_%__match1996119962%_
                               _%e1274213281%_
                               _%hd1274313285%_
                               _%tl1274413288%_
                               _%e1274513291%_
                               _%hd1274613295%_
                               _%tl1274713298%_
                               _%e1274813301%_
                               _%hd1274913305%_
                               _%tl1275013308%_
                               _%__splice1981719818%_
                               _%target1282012871%_
                               _%tl1282212874%_)
                              (let ()
                                (declare (not safe))
                                (_%g1273812834%_)))))
                      (let () (declare (not safe)) (_%g1273812834%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1275013308%_)
                                                  (let ((_%__splice1981719818%_
                                                         (gx#syntax-split-splice
                                                          _%tl1275013308%_
                                                          '0)))
                                                    (let ((_%tl1282212874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1981719818%_
                                                              '1)))
                                                          (_%target1282012871%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1981719818%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1282212874%_)
                                                          (_%__match1996119962%_
                                                           _%e1274213281%_
                                                           _%hd1274313285%_
                                                           _%tl1274413288%_
                                                           _%e1274513291%_
                                                           _%hd1274613295%_
                                                           _%tl1274713298%_
                                                           _%e1274813301%_
                                                           _%hd1274913305%_
                                                           _%tl1275013308%_
                                                           _%__splice1981719818%_
                                                           _%target1282012871%_
                                                           _%tl1282212874%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1273812834%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1273812834%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1273812834%_)))))
                          (let () (declare (not safe)) (_%g1273812834%_)))))
                  (let () (declare (not safe)) (_%g1273812834%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13333%_)
        (letrec ((_%split13336%_
                  (lambda (_%lst13697%_ _%mid13699%_)
                    (let _%lp13701%_ ((_%i13704%_ '0)
                                      (_%rest13706%_ _%lst13697%_)
                                      (_%left13707%_ '()))
                      (if (fx< _%i13704%_ _%mid13699%_)
                          (_%lp13701%_
                           (fx1+ _%i13704%_)
                           (cdr _%rest13706%_)
                           (cons (car _%rest13706%_) _%left13707%_))
                          (values (reverse _%left13707%_) _%rest13706%_))))))
          (let* ((_%g1333913367%_
                  (lambda (_%g1334013363%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1334013363%_)))
                 (_%g1333813693%_
                  (lambda (_%g1334013371%_)
                    (if (gx#stx-pair? _%g1334013371%_)
                        (let ((_%e1334413374%_ (gx#syntax-e _%g1334013371%_)))
                          (let ((_%hd1334513378%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1334413374%_)))
                                (_%tl1334613381%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1334413374%_))))
                            (if (gx#stx-pair? _%tl1334613381%_)
                                (let ((_%e1334713384%_
                                       (gx#syntax-e _%tl1334613381%_)))
                                  (let ((_%hd1334813388%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1334713384%_)))
                                        (_%tl1334913391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1334713384%_))))
                                    (if (gx#stx-pair? _%tl1334913391%_)
                                        (let ((_%e1335013394%_
                                               (gx#syntax-e _%tl1334913391%_)))
                                          (let ((_%hd1335113398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1335013394%_)))
                                                (_%tl1335213401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1335013394%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1335213401%_)
                                                (let ((_g21026_
                                                       (gx#syntax-split-splice
                                                        _%tl1335213401%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21027_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21026_)
                         (##vector-length _g21026_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21027_ 2)))
                  (error "Context expects 2 values" _g21027_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1335313404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21026_
                                                              0)))
                                                          (_%tl1335513407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21026_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1335513407%_)
                                                          (letrec ((_%loop1335613410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1335413414%_ _%K1336013417%_)
                              (if (gx#stx-pair? _%hd1335413414%_)
                                  (let ((_%e1335713420%_
                                         (gx#syntax-e _%hd1335413414%_)))
                                    (let ((_%lp-hd1335813424%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1335713420%_)))
                                          (_%lp-tl1335913427%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1335713420%_))))
                                      (_%loop1335613410%_
                                       _%lp-tl1335913427%_
                                       (cons _%lp-hd1335813424%_
                                             _%K1336013417%_))))
                                  (let ((_%K1336113430%_
                                         (reverse _%K1336013417%_)))
                                    ((lambda (_%L13434%_ _%L13436%_ _%L13437%_)
                                       (let* ((_%len13467%_
                                               (length (foldr (lambda (_%g1345813461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1345913464%_)
                        (cons _%g1345813461%_ _%g1345913464%_))
                      '()
                      _%L13434%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13470%_
                                               (quotient _%len13467%_ '2))
                                              (_g21028_
                                               (_%split13336%_
                                                (foldr (lambda (_%g1347213475%_
                                                                _%g1347313478%_)
                                                         (cons _%g1347213475%_
                                                               _%g1347313478%_))
                                                       '()
                                                       _%L13434%_)
                                                _%mid13470%_)))
                                         (begin
                                           (let ((_g21029_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g21028_)
                                                        (##vector-length
                                                         _g21028_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g21029_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g21029_)))
                                           (let ((_%left13481%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g21028_ 0)))
                                                 (_%right13483%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g21028_
                                                     1))))
                                             (let* ((_%g1348713528%_
                                                     (lambda (_%g1348813524%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1348813524%_)))
                                                    (_%g1348613689%_
                                                     (lambda (_%g1348813532%_)
                                                       (if (gx#stx-pair?
                                                            _%g1348813532%_)
                                                           (let ((_%e1349313535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1348813532%_)))
                     (let ((_%hd1349413539%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1349313535%_)))
                           (_%tl1349513542%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1349313535%_))))
                       (if (gx#stx-pair? _%tl1349513542%_)
                           (let ((_%e1349613545%_
                                  (gx#syntax-e _%tl1349513542%_)))
                             (let ((_%hd1349713549%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1349613545%_)))
                                   (_%tl1349813552%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1349613545%_))))
                               (if (gx#stx-pair/null? _%hd1349713549%_)
                                   (let ((_g21030_
                                          (gx#syntax-split-splice
                                           _%hd1349713549%_
                                           '0)))
                                     (begin
                                       (let ((_g21031_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21030_)
                                                    (##vector-length _g21030_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21031_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21031_)))
                                       (let ((_%target1349913555%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21030_ 0)))
                                             (_%tl1350113558%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21030_ 1))))
                                         (if (gx#stx-null? _%tl1350113558%_)
                                             (letrec ((_%loop1350213561%_
                                                       (lambda (_%hd1350013565%_
                                                                _%K-left1350613568%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1350013565%_)
                                                             (let ((_%e1350313571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1350013565%_)))
                       (let ((_%lp-hd1350413575%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1350313571%_)))
                             (_%lp-tl1350513578%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1350313571%_))))
                         (_%loop1350213561%_
                          _%lp-tl1350513578%_
                          (cons _%lp-hd1350413575%_ _%K-left1350613568%_))))
                     (let ((_%K-left1350713581%_
                            (reverse _%K-left1350613568%_)))
                       (if (gx#stx-pair? _%tl1349813552%_)
                           (let ((_%e1350813585%_
                                  (gx#syntax-e _%tl1349813552%_)))
                             (let ((_%hd1350913589%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1350813585%_)))
                                   (_%tl1351013592%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1350813585%_))))
                               (if (gx#stx-pair/null? _%hd1350913589%_)
                                   (let ((_g21032_
                                          (gx#syntax-split-splice
                                           _%hd1350913589%_
                                           '0)))
                                     (begin
                                       (let ((_g21033_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21032_)
                                                    (##vector-length _g21032_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21033_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21033_)))
                                       (let ((_%target1351113595%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21032_ 0)))
                                             (_%tl1351313598%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21032_ 1))))
                                         (if (gx#stx-null? _%tl1351313598%_)
                                             (letrec ((_%loop1351413601%_
                                                       (lambda (_%hd1351213605%_
                                                                _%K-right1351813608%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1351213605%_)
                                                             (let ((_%e1351513611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1351213605%_)))
                       (let ((_%lp-hd1351613615%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1351513611%_)))
                             (_%lp-tl1351713618%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1351513611%_))))
                         (_%loop1351413601%_
                          _%lp-tl1351713618%_
                          (cons _%lp-hd1351613615%_ _%K-right1351813608%_))))
                     (let ((_%K-right1351913621%_
                            (reverse _%K-right1351813608%_)))
                       (if (gx#stx-pair? _%tl1351013592%_)
                           (let ((_%e1352013625%_
                                  (gx#syntax-e _%tl1351013592%_)))
                             (let ((_%hd1352113629%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1352013625%_)))
                                   (_%tl1352213632%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1352013625%_))))
                               (if (gx#stx-null? _%tl1352213632%_)
                                   ((lambda (_%L13635%_
                                             _%L13637%_
                                             _%L13638%_
                                             _%L13639%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%L13436%_
                                                              (cons _%L13635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%L13437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L13436%_
                                  (foldr (lambda (_%g1367413677%_
                                                  _%g1367513680%_)
                                           (cons _%g1367413677%_
                                                 _%g1367513680%_))
                                         '()
                                         _%L13638%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%L13635%_
                                  (cons _%L13436%_
                                        (foldr (lambda (_%g1367213683%_
                                                        _%g1367313686%_)
                                                 (cons _%g1367213683%_
                                                       _%g1367313686%_))
                                               '()
                                               _%L13637%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1352113629%_
                                    _%K-right1351913621%_
                                    _%K-left1350713581%_
                                    _%hd1349413539%_)
                                   (_%g1348713528%_ _%g1348813532%_))))
                           (_%g1348713528%_ _%g1348813532%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1351413601%_
                                                _%target1351113595%_
                                                '()))
                                             (_%g1348713528%_
                                              _%g1348813532%_)))))
                                   (_%g1348713528%_ _%g1348813532%_))))
                           (_%g1348713528%_ _%g1348813532%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1350213561%_
                                                _%target1349913555%_
                                                '()))
                                             (_%g1348713528%_
                                              _%g1348813532%_)))))
                                   (_%g1348713528%_ _%g1348813532%_))))
                           (_%g1348713528%_ _%g1348813532%_))))
                   (_%g1348713528%_ _%g1348813532%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1348613689%_
                                                (list _%mid13470%_
                                                      _%left13481%_
                                                      _%right13483%_
                                                      (fx+ _%mid13470%_
                                                           (gx#stx-e
                                                            _%L13437%_)))))))))
                                     _%K1336113430%_
                                     _%hd1335113398%_
                                     _%hd1334813388%_))))))
                    (_%loop1335613410%_ _%target1335313404%_ '()))
                  (_%g1333913367%_ _%g1334013371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1333913367%_
                                                 _%g1334013371%_))))
                                        (_%g1333913367%_ _%g1334013371%_))))
                                (_%g1333913367%_ _%g1334013371%_))))
                        (_%g1333913367%_ _%g1334013371%_)))))
            (_%g1333813693%_ _%stx13333%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do|
      (lambda (_%$stx13713%_)
        (let* ((_%g1371713788%_
                (lambda (_%g1371813784%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1371813784%_)))
               (_%g1371614077%_
                (lambda (_%g1371813792%_)
                  (if (gx#stx-pair? _%g1371813792%_)
                      (let ((_%e1372513795%_ (gx#syntax-e _%g1371813792%_)))
                        (let ((_%hd1372613799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1372513795%_)))
                              (_%tl1372713802%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1372513795%_))))
                          (if (gx#stx-pair? _%tl1372713802%_)
                              (let ((_%e1372813805%_
                                     (gx#syntax-e _%tl1372713802%_)))
                                (let ((_%hd1372913809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1372813805%_)))
                                      (_%tl1373013812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1372813805%_))))
                                  (if (gx#stx-pair/null? _%hd1372913809%_)
                                      (let ((_g21034_
                                             (gx#syntax-split-splice
                                              _%hd1372913809%_
                                              '0)))
                                        (begin
                                          (let ((_g21035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21034_)
                                                       (##vector-length
                                                        _g21034_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21035_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21035_)))
                                          (let ((_%target1373113815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21034_ 0)))
                                                (_%tl1373313818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21034_ 1))))
                                            (if (gx#stx-null? _%tl1373313818%_)
                                                (letrec ((_%loop1373413821%_
                                                          (lambda (_%hd1373213825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step1373813828%_
                           _%init1373913830%_
                           _%var1374013832%_)
                    (if (gx#stx-pair? _%hd1373213825%_)
                        (let ((_%e1373513835%_ (gx#syntax-e _%hd1373213825%_)))
                          (let ((_%lp-hd1373613839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1373513835%_)))
                                (_%lp-tl1373713842%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1373513835%_))))
                            (if (gx#stx-pair? _%lp-hd1373613839%_)
                                (let ((_%e1376813845%_
                                       (gx#syntax-e _%lp-hd1373613839%_)))
                                  (let ((_%hd1376913849%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1376813845%_)))
                                        (_%tl1377013852%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1376813845%_))))
                                    (if (gx#stx-pair? _%tl1377013852%_)
                                        (let ((_%e1377113855%_
                                               (gx#syntax-e _%tl1377013852%_)))
                                          (let ((_%hd1377213859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1377113855%_)))
                                                (_%tl1377313862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1377113855%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1377313862%_)
                                                (let ((_g21036_
                                                       (gx#syntax-split-splice
                                                        _%tl1377313862%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21036_)
                         (##vector-length _g21036_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21037_ 2)))
                  (error "Context expects 2 values" _g21037_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1377413865%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21036_
                                                              0)))
                                                          (_%tl1377613868%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21036_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1377613868%_)
                                                          (letrec ((_%loop1377713871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1377513875%_ _%step1378113878%_)
                              (if (gx#stx-pair? _%hd1377513875%_)
                                  (let ((_%e1377813881%_
                                         (gx#syntax-e _%hd1377513875%_)))
                                    (let ((_%lp-hd1377913885%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1377813881%_)))
                                          (_%lp-tl1378013888%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1377813881%_))))
                                      (_%loop1377713871%_
                                       _%lp-tl1378013888%_
                                       (cons _%lp-hd1377913885%_
                                             _%step1378113878%_))))
                                  (let ((_%step1378213891%_
                                         (reverse _%step1378113878%_)))
                                    (_%loop1373413821%_
                                     _%lp-tl1373713842%_
                                     (cons _%step1378213891%_
                                           _%step1373813828%_)
                                     (cons _%hd1377213859%_ _%init1373913830%_)
                                     (cons _%hd1376913849%_
                                           _%var1374013832%_)))))))
                    (_%loop1377713871%_ _%target1377413865%_ '()))
                  (_%g1371713788%_ _%g1371813792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1371713788%_
                                                 _%g1371813792%_))))
                                        (_%g1371713788%_ _%g1371813792%_))))
                                (_%g1371713788%_ _%g1371813792%_))))
                        (let ((_%step1374113895%_ (reverse _%step1373813828%_))
                              (_%init1374213898%_ (reverse _%init1373913830%_))
                              (_%var1374313900%_ (reverse _%var1374013832%_)))
                          (if (gx#stx-pair? _%tl1373013812%_)
                              (let ((_%e1374413903%_
                                     (gx#syntax-e _%tl1373013812%_)))
                                (let ((_%hd1374513907%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1374413903%_)))
                                      (_%tl1374613910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1374413903%_))))
                                  (if (gx#stx-pair? _%hd1374513907%_)
                                      (let ((_%e1374713913%_
                                             (gx#syntax-e _%hd1374513907%_)))
                                        (let ((_%hd1374813917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1374713913%_)))
                                              (_%tl1374913920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1374713913%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1374913920%_)
                                              (let ((_g21038_
                                                     (gx#syntax-split-splice
                                                      _%tl1374913920%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21039_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21038_)
                                                               (##vector-length
                                                                _g21038_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21039_ 2)))
                (error "Context expects 2 values" _g21039_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1375013923%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21038_
                                                            0)))
                                                        (_%tl1375213926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21038_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1375213926%_)
                                                        (letrec ((_%loop1375313929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1375113933%_ _%fini1375713936%_)
                            (if (gx#stx-pair? _%hd1375113933%_)
                                (let ((_%e1375413939%_
                                       (gx#syntax-e _%hd1375113933%_)))
                                  (let ((_%lp-hd1375513943%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1375413939%_)))
                                        (_%lp-tl1375613946%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1375413939%_))))
                                    (_%loop1375313929%_
                                     _%lp-tl1375613946%_
                                     (cons _%lp-hd1375513943%_
                                           _%fini1375713936%_))))
                                (let ((_%fini1375813949%_
                                       (reverse _%fini1375713936%_)))
                                  (if (gx#stx-pair/null? _%tl1374613910%_)
                                      (let ((_g21040_
                                             (gx#syntax-split-splice
                                              _%tl1374613910%_
                                              '0)))
                                        (begin
                                          (let ((_g21041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21040_)
                                                       (##vector-length
                                                        _g21040_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21041_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21041_)))
                                          (let ((_%target1375913953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21040_ 0)))
                                                (_%tl1376113956%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21040_ 1))))
                                            (if (gx#stx-null? _%tl1376113956%_)
                                                (letrec ((_%loop1376213959%_
                                                          (lambda (_%hd1376013963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1376613966%_)
                    (if (gx#stx-pair? _%hd1376013963%_)
                        (let ((_%e1376313969%_ (gx#syntax-e _%hd1376013963%_)))
                          (let ((_%lp-hd1376413973%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1376313969%_)))
                                (_%lp-tl1376513976%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1376313969%_))))
                            (_%loop1376213959%_
                             _%lp-tl1376513976%_
                             (cons _%lp-hd1376413973%_ _%body1376613966%_))))
                        (let ((_%body1376713979%_
                               (reverse _%body1376613966%_)))
                          ((lambda (_%L13983%_
                                    _%L13985%_
                                    _%L13986%_
                                    _%L13987%_
                                    _%L13988%_
                                    _%L13989%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g1402214025%_
                                                  _%g1402314028%_)
                                           (cons _%g1402214025%_
                                                 _%g1402314028%_))
                                         '()
                                         _%L13989%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L13988%_
                                                      _%L13989%_)
                                                     (foldr (lambda (_%g1403914043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g1404014046%_
                             _%g1404114048%_)
                      (cons (cons _%g1404014046%_ (cons _%g1403914043%_ '()))
                            _%g1404114048%_))
                    '()
                    _%L13988%_
                    _%L13989%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L13986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g1403714051%_
                                                               _%g1403814054%_)
                                                        (cons _%g1403714051%_
                                                              _%g1403814054%_))
                                                      '()
                                                      _%L13985%_)))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_%g1403014057%_
                                                               _%g1403114060%_)
                                                        (cons _%g1403014057%_
                                                              _%g1403114060%_))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets
                             _%L13987%_
                             _%L13989%_)
                            (foldr (lambda (_%g1403214063%_
                                            _%g1403314066%_
                                            _%g1403414068%_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _%g1403314066%_
                                                       (foldr (lambda (_%g1403514071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1403614074%_)
                        (cons _%g1403514071%_ _%g1403614074%_))
                      '()
                      _%g1403214063%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g1403414068%_))
                                   '()
                                   _%L13987%_
                                   _%L13989%_)))
                    '())
              _%L13983%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g1371713788%_ _%g1371813792%_)))
                           _%body1376713979%_
                           _%fini1375813949%_
                           _%hd1374813917%_
                           _%step1374113895%_
                           _%init1374213898%_
                           _%var1374313900%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1376213959%_
                                                   _%target1375913953%_
                                                   '()))
                                                (_%g1371713788%_
                                                 _%g1371813792%_)))))
                                      (_%g1371713788%_ _%g1371813792%_)))))))
                  (_%loop1375313929%_ _%target1375013923%_ '()))
                (_%g1371713788%_ _%g1371813792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1371713788%_
                                               _%g1371813792%_))))
                                      (_%g1371713788%_ _%g1371813792%_))))
                              (_%g1371713788%_ _%g1371813792%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1373413821%_
                                                   _%target1373113815%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g1371713788%_
                                                 _%g1371813792%_)))))
                                      (_%g1371713788%_ _%g1371813792%_))))
                              (_%g1371713788%_ _%g1371813792%_))))
                      (_%g1371713788%_ _%g1371813792%_)))))
          (_%g1371614077%_ _%$stx13713%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do-while|
      (lambda (_%$stx14085%_)
        (let* ((_%g1408914112%_
                (lambda (_%g1409014108%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1409014108%_)))
               (_%g1408814183%_
                (lambda (_%g1409014116%_)
                  (if (gx#stx-pair? _%g1409014116%_)
                      (let ((_%e1409514119%_ (gx#syntax-e _%g1409014116%_)))
                        (let ((_%hd1409614123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1409514119%_)))
                              (_%tl1409714126%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1409514119%_))))
                          (if (gx#stx-pair? _%tl1409714126%_)
                              (let ((_%e1409814129%_
                                     (gx#syntax-e _%tl1409714126%_)))
                                (let ((_%hd1409914133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1409814129%_)))
                                      (_%tl1410014136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1409814129%_))))
                                  (if (gx#stx-pair? _%tl1410014136%_)
                                      (let ((_%e1410114139%_
                                             (gx#syntax-e _%tl1410014136%_)))
                                        (let ((_%hd1410214143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1410114139%_)))
                                              (_%tl1410314146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1410114139%_))))
                                          (if (gx#stx-pair? _%hd1410214143%_)
                                              (let ((_%e1410414149%_
                                                     (gx#syntax-e
                                                      _%hd1410214143%_)))
                                                (let ((_%hd1410514153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1410414149%_)))
                                                      (_%tl1410614156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1410414149%_))))
                                                  ((lambda (_%L14159%_
                                                            _%L14161%_
                                                            _%L14162%_
                                                            _%L14163%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _%L14163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _%L14162%_ '()))
                                     _%L14161%_)
                               _%L14159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl1410314146%_
                                                   _%tl1410614156%_
                                                   _%hd1410514153%_
                                                   _%hd1409914133%_)))
                                              (_%g1408914112%_
                                               _%g1409014116%_))))
                                      (_%g1408914112%_ _%g1409014116%_))))
                              (_%g1408914112%_ _%g1409014116%_))))
                      (_%g1408914112%_ _%g1409014116%_)))))
          (_%g1408814183%_ _%$stx14085%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx14187%_)
        (let* ((_%__stx1996419965%_ _%$stx14187%_)
               (_%g1419214223%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1996419965%_))))
          (let ((_%__kont1996719968%_ (lambda (_%L14335%_) _%L14335%_))
                (_%__kont1996919970%_
                 (lambda (_%L14280%_ _%L14282%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%L14282%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1429914302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1430014305%_)
                        (cons _%g1429914302%_ _%g1430014305%_))
                      '()
                      _%L14280%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match2000720008%_
                   (lambda (_%e1420314230%_
                            _%hd1420414234%_
                            _%tl1420514237%_
                            _%e1420614240%_
                            _%hd1420714244%_
                            _%tl1420814247%_
                            _%__splice1997119972%_
                            _%target1420914250%_
                            _%tl1421114253%_)
                     (letrec ((_%loop1421214256%_
                               (lambda (_%hd1421014260%_ _%rest1421614263%_)
                                 (if (gx#stx-pair? _%hd1421014260%_)
                                     (let ((_%e1421314266%_
                                            (gx#syntax-e _%hd1421014260%_)))
                                       (let ((_%lp-tl1421514273%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1421314266%_)))
                                             (_%lp-hd1421414270%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1421314266%_))))
                                         (_%loop1421214256%_
                                          _%lp-tl1421514273%_
                                          (cons _%lp-hd1421414270%_
                                                _%rest1421614263%_))))
                                     (let ((_%rest1421714276%_
                                            (reverse _%rest1421614263%_)))
                                       (_%__kont1996919970%_
                                        _%rest1421714276%_
                                        _%hd1420714244%_))))))
                       (_%loop1421214256%_ _%target1420914250%_ '())))))
              (if (gx#stx-pair? _%__stx1996419965%_)
                  (let ((_%e1419514315%_ (gx#syntax-e _%__stx1996419965%_)))
                    (let ((_%tl1419714322%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1419514315%_)))
                          (_%hd1419614319%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1419514315%_))))
                      (if (gx#stx-pair? _%tl1419714322%_)
                          (let ((_%e1419814325%_
                                 (gx#syntax-e _%tl1419714322%_)))
                            (let ((_%tl1420014332%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1419814325%_)))
                                  (_%hd1419914329%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1419814325%_))))
                              (if (gx#stx-null? _%tl1420014332%_)
                                  (_%__kont1996719968%_ _%hd1419914329%_)
                                  (if (gx#stx-pair/null? _%tl1420014332%_)
                                      (let ((_%__splice1997119972%_
                                             (gx#syntax-split-splice
                                              _%tl1420014332%_
                                              '0)))
                                        (let ((_%tl1421114253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1997119972%_
                                                  '1)))
                                              (_%target1420914250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1997119972%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1421114253%_)
                                              (_%__match2000720008%_
                                               _%e1419514315%_
                                               _%hd1419614319%_
                                               _%tl1419714322%_
                                               _%e1419814325%_
                                               _%hd1419914329%_
                                               _%tl1420014332%_
                                               _%__splice1997119972%_
                                               _%target1420914250%_
                                               _%tl1421114253%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1419214223%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1419214223%_))))))
                          (let () (declare (not safe)) (_%g1419214223%_)))))
                  (let () (declare (not safe)) (_%g1419214223%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14353%_)
        (let* ((_%__stx2001020011%_ _%$stx14353%_)
               (_%g1435914412%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2001020011%_))))
          (let ((_%__kont2001320014%_
                 (lambda (_%L14614%_ _%L14616%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14616%_ (cons _%L14614%_ '()))
                                     '())
                               (cons _%L14616%_ '())))))
                (_%__kont2001520016%_
                 (lambda (_%L14558%_ _%L14560%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%L14560%_ (cons _%L14558%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%L14560%_)
                                     '())))))
                (_%__kont2001720018%_
                 (lambda (_%L14479%_ _%L14481%_ _%L14482%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14482%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%L14481%_
                                                             (foldr (lambda (_%g1450214505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1450314508%_)
                              (cons _%g1450214505%_ _%g1450314508%_))
                            '()
                            _%L14479%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%L14482%_ '()))))))
            (let* ((_%__match2009720098%_
                    (lambda (_%e1438914419%_
                             _%hd1439014423%_
                             _%tl1439114426%_
                             _%e1439214429%_
                             _%hd1439314433%_
                             _%tl1439414436%_
                             _%e1439514439%_
                             _%hd1439614443%_
                             _%tl1439714446%_
                             _%__splice2001920020%_
                             _%target1439814449%_
                             _%tl1440014452%_)
                      (letrec ((_%loop1440114455%_
                                (lambda (_%hd1439914459%_ _%body1440514462%_)
                                  (if (gx#stx-pair? _%hd1439914459%_)
                                      (let ((_%e1440214465%_
                                             (gx#syntax-e _%hd1439914459%_)))
                                        (let ((_%lp-tl1440414472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1440214465%_)))
                                              (_%lp-hd1440314469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1440214465%_))))
                                          (_%loop1440114455%_
                                           _%lp-tl1440414472%_
                                           (cons _%lp-hd1440314469%_
                                                 _%body1440514462%_))))
                                      (let ((_%body1440614475%_
                                             (reverse _%body1440514462%_)))
                                        (let ((_%L14479%_ _%body1440614475%_)
                                              (_%L14481%_ _%tl1439714446%_)
                                              (_%L14482%_ _%hd1439614443%_))
                                          (if (gx#identifier? _%L14482%_)
                                              (_%__kont2001720018%_
                                               _%L14479%_
                                               _%L14481%_
                                               _%L14482%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1435914412%_)))))))))
                        (_%loop1440114455%_ _%target1439814449%_ '()))))
                   (_%__match2007120072%_
                    (lambda (_%e1437414518%_
                             _%hd1437514522%_
                             _%tl1437614525%_
                             _%e1437714528%_
                             _%hd1437814532%_
                             _%tl1437914535%_
                             _%e1438014538%_
                             _%hd1438114542%_
                             _%tl1438214545%_
                             _%e1438314548%_
                             _%hd1438414552%_
                             _%tl1438514555%_)
                      (let ((_%L14558%_ _%hd1438414552%_)
                            (_%L14560%_ _%tl1438214545%_))
                        (if (gx#identifier-list? _%L14560%_)
                            (_%__kont2001520016%_ _%L14558%_ _%L14560%_)
                            (if (gx#stx-pair/null? _%tl1437914535%_)
                                (let ((_%__splice2001920020%_
                                       (gx#syntax-split-splice
                                        _%tl1437914535%_
                                        '0)))
                                  (let ((_%tl1440014452%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2001920020%_
                                            '1)))
                                        (_%target1439814449%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2001920020%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1440014452%_)
                                        (_%__match2009720098%_
                                         _%e1437414518%_
                                         _%hd1437514522%_
                                         _%tl1437614525%_
                                         _%e1437714528%_
                                         _%hd1437814532%_
                                         _%tl1437914535%_
                                         _%e1438014538%_
                                         _%hd1438114542%_
                                         _%tl1438214545%_
                                         _%__splice2001920020%_
                                         _%target1439814449%_
                                         _%tl1440014452%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1435914412%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1435914412%_)))))))
                   (_%__match2004120042%_
                    (lambda (_%e1436314584%_
                             _%hd1436414588%_
                             _%tl1436514591%_
                             _%e1436614594%_
                             _%hd1436714598%_
                             _%tl1436814601%_
                             _%e1436914604%_
                             _%hd1437014608%_
                             _%tl1437114611%_)
                      (let ((_%L14614%_ _%hd1437014608%_)
                            (_%L14616%_ _%hd1436714598%_))
                        (if (gx#identifier? _%L14616%_)
                            (_%__kont2001320014%_ _%L14614%_ _%L14616%_)
                            (if (gx#stx-pair? _%hd1436714598%_)
                                (let ((_%e1438014538%_
                                       (gx#syntax-e _%hd1436714598%_)))
                                  (let ((_%tl1438214545%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1438014538%_)))
                                        (_%hd1438114542%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1438014538%_))))
                                    (if (gx#identifier? _%hd1438114542%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g21042_|
                                             _%hd1438114542%_)
                                            (_%__match2007120072%_
                                             _%e1436314584%_
                                             _%hd1436414588%_
                                             _%tl1436514591%_
                                             _%e1436614594%_
                                             _%hd1436714598%_
                                             _%tl1436814601%_
                                             _%e1438014538%_
                                             _%hd1438114542%_
                                             _%tl1438214545%_
                                             _%e1436914604%_
                                             _%hd1437014608%_
                                             _%tl1437114611%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1436814601%_)
                                                (let ((_%__splice2001920020%_
                                                       (gx#syntax-split-splice
                                                        _%tl1436814601%_
                                                        '0)))
                                                  (let ((_%tl1440014452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2001920020%_
                                                            '1)))
                                                        (_%target1439814449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2001920020%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1440014452%_)
                                                        (_%__match2009720098%_
                                                         _%e1436314584%_
                                                         _%hd1436414588%_
                                                         _%tl1436514591%_
                                                         _%e1436614594%_
                                                         _%hd1436714598%_
                                                         _%tl1436814601%_
                                                         _%e1438014538%_
                                                         _%hd1438114542%_
                                                         _%tl1438214545%_
                                                         _%__splice2001920020%_
                                                         _%target1439814449%_
                                                         _%tl1440014452%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1435914412%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1435914412%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1436814601%_)
                                            (let ((_%__splice2001920020%_
                                                   (gx#syntax-split-splice
                                                    _%tl1436814601%_
                                                    '0)))
                                              (let ((_%tl1440014452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2001920020%_
                                                        '1)))
                                                    (_%target1439814449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2001920020%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1440014452%_)
                                                    (_%__match2009720098%_
                                                     _%e1436314584%_
                                                     _%hd1436414588%_
                                                     _%tl1436514591%_
                                                     _%e1436614594%_
                                                     _%hd1436714598%_
                                                     _%tl1436814601%_
                                                     _%e1438014538%_
                                                     _%hd1438114542%_
                                                     _%tl1438214545%_
                                                     _%__splice2001920020%_
                                                     _%target1439814449%_
                                                     _%tl1440014452%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1435914412%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1435914412%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1435914412%_))))))))
              (if (gx#stx-pair? _%__stx2001020011%_)
                  (let ((_%e1436314584%_ (gx#syntax-e _%__stx2001020011%_)))
                    (let ((_%tl1436514591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1436314584%_)))
                          (_%hd1436414588%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1436314584%_))))
                      (if (gx#stx-pair? _%tl1436514591%_)
                          (let ((_%e1436614594%_
                                 (gx#syntax-e _%tl1436514591%_)))
                            (let ((_%tl1436814601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1436614594%_)))
                                  (_%hd1436714598%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1436614594%_))))
                              (if (gx#stx-pair? _%tl1436814601%_)
                                  (let ((_%e1436914604%_
                                         (gx#syntax-e _%tl1436814601%_)))
                                    (let ((_%tl1437114611%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1436914604%_)))
                                          (_%hd1437014608%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1436914604%_))))
                                      (if (gx#stx-null? _%tl1437114611%_)
                                          (_%__match2004120042%_
                                           _%e1436314584%_
                                           _%hd1436414588%_
                                           _%tl1436514591%_
                                           _%e1436614594%_
                                           _%hd1436714598%_
                                           _%tl1436814601%_
                                           _%e1436914604%_
                                           _%hd1437014608%_
                                           _%tl1437114611%_)
                                          (if (gx#stx-pair? _%hd1436714598%_)
                                              (let ((_%e1438014538%_
                                                     (gx#syntax-e
                                                      _%hd1436714598%_)))
                                                (let ((_%tl1438214545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1438014538%_)))
                                                      (_%hd1438114542%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1438014538%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1436814601%_)
                                                      (let ((_%__splice2001920020%_
                                                             (gx#syntax-split-splice
                                                              _%tl1436814601%_
                                                              '0)))
                                                        (let ((_%tl1440014452%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice2001920020%_ '1)))
                      (_%target1439814449%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice2001920020%_ '0))))
                  (if (gx#stx-null? _%tl1440014452%_)
                      (_%__match2009720098%_
                       _%e1436314584%_
                       _%hd1436414588%_
                       _%tl1436514591%_
                       _%e1436614594%_
                       _%hd1436714598%_
                       _%tl1436814601%_
                       _%e1438014538%_
                       _%hd1438114542%_
                       _%tl1438214545%_
                       _%__splice2001920020%_
                       _%target1439814449%_
                       _%tl1440014452%_)
                      (let () (declare (not safe)) (_%g1435914412%_)))))
              (let () (declare (not safe)) (_%g1435914412%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1435914412%_))))))
                                  (if (gx#stx-pair? _%hd1436714598%_)
                                      (let ((_%e1438014538%_
                                             (gx#syntax-e _%hd1436714598%_)))
                                        (let ((_%tl1438214545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1438014538%_)))
                                              (_%hd1438114542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1438014538%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1436814601%_)
                                              (let ((_%__splice2001920020%_
                                                     (gx#syntax-split-splice
                                                      _%tl1436814601%_
                                                      '0)))
                                                (let ((_%tl1440014452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2001920020%_
                                                          '1)))
                                                      (_%target1439814449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2001920020%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1440014452%_)
                                                      (_%__match2009720098%_
                                                       _%e1436314584%_
                                                       _%hd1436414588%_
                                                       _%tl1436514591%_
                                                       _%e1436614594%_
                                                       _%hd1436714598%_
                                                       _%tl1436814601%_
                                                       _%e1438014538%_
                                                       _%hd1438114542%_
                                                       _%tl1438214545%_
                                                       _%__splice2001920020%_
                                                       _%target1439814449%_
                                                       _%tl1440014452%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1435914412%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1435914412%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1435914412%_))))))
                          (let () (declare (not safe)) (_%g1435914412%_)))))
                  (let () (declare (not safe)) (_%g1435914412%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14636%_)
        (letrec ((_%let-bind?14639%_
                  (lambda (_%x15562%_)
                    (let* ((_%__stx2010020101%_ _%x15562%_)
                           (_%g1556715586%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2010020101%_))))
                      (let ((_%__kont2010320104%_
                             (lambda (_%L15654%_ _%L15656%_)
                               (_%let-head?14642%_ _%L15656%_)))
                            (_%__kont2010520106%_ (lambda (_%L15614%_) '#t))
                            (_%__kont2010720108%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2010020101%_)
                            (let ((_%e1557115634%_
                                   (gx#syntax-e _%__stx2010020101%_)))
                              (let ((_%tl1557315641%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1557115634%_)))
                                    (_%hd1557215638%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1557115634%_))))
                                (if (gx#stx-pair? _%tl1557315641%_)
                                    (let ((_%e1557415644%_
                                           (gx#syntax-e _%tl1557315641%_)))
                                      (let ((_%tl1557615651%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1557415644%_)))
                                            (_%hd1557515648%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1557415644%_))))
                                        (if (gx#stx-null? _%tl1557615651%_)
                                            (_%__kont2010320104%_
                                             _%hd1557515648%_
                                             _%hd1557215638%_)
                                            (_%__kont2010720108%_))))
                                    (if (gx#stx-null? _%tl1557315641%_)
                                        (_%__kont2010520106%_ _%hd1557215638%_)
                                        (_%__kont2010720108%_)))))
                            (_%__kont2010720108%_))))))
                 (_%let-bind14641%_
                  (lambda (_%x15464%_)
                    (let* ((_%__stx2013420135%_ _%x15464%_)
                           (_%g1546815487%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2013420135%_))))
                      (let ((_%__kont2013720138%_
                             (lambda (_%L15543%_ _%L15545%_) _%x15464%_))
                            (_%__kont2013920140%_
                             (lambda (_%L15504%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%L15504%_ '())))))
                        (if (gx#stx-pair? _%__stx2013420135%_)
                            (let ((_%e1547215523%_
                                   (gx#syntax-e _%__stx2013420135%_)))
                              (let ((_%tl1547415530%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1547215523%_)))
                                    (_%hd1547315527%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1547215523%_))))
                                (if (gx#stx-pair? _%tl1547415530%_)
                                    (let ((_%e1547515533%_
                                           (gx#syntax-e _%tl1547415530%_)))
                                      (let ((_%tl1547715540%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1547515533%_)))
                                            (_%hd1547615537%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1547515533%_))))
                                        (if (gx#stx-null? _%tl1547715540%_)
                                            (_%__kont2013720138%_
                                             _%hd1547615537%_
                                             _%hd1547315527%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1546815487%_)))))
                                    (if (gx#stx-null? _%tl1547415530%_)
                                        (_%__kont2013920140%_ _%hd1547315527%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1546815487%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1546815487%_)))))))
                 (_%let-head?14642%_
                  (lambda (_%x15404%_)
                    (let* ((_%__stx2016620167%_ _%x15404%_)
                           (_%g1540815419%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2016620167%_))))
                      (let ((_%__kont2016920170%_
                             (lambda (_%L15447%_)
                               (gx#stx-andmap gx#identifier? _%L15447%_)))
                            (_%__kont2017120172%_
                             (lambda () (gx#identifier? _%x15404%_))))
                        (if (gx#stx-pair? _%__stx2016620167%_)
                            (let ((_%e1541115437%_
                                   (gx#syntax-e _%__stx2016620167%_)))
                              (let ((_%tl1541315444%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1541115437%_)))
                                    (_%hd1541215441%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1541115437%_))))
                                (if (gx#identifier? _%hd1541215441%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21043_|
                                         _%hd1541215441%_)
                                        (_%__kont2016920170%_ _%tl1541315444%_)
                                        (_%__kont2017120172%_))
                                    (_%__kont2017120172%_))))
                            (_%__kont2017120172%_))))))
                 (_%let-head14643%_
                  (lambda (_%x15344%_)
                    (let* ((_%__stx2018620187%_ _%x15344%_)
                           (_%g1534815359%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2018620187%_))))
                      (let ((_%__kont2018920190%_
                             (lambda (_%L15387%_) _%L15387%_))
                            (_%__kont2019120192%_
                             (lambda () (list _%x15344%_))))
                        (if (gx#stx-pair? _%__stx2018620187%_)
                            (let ((_%e1535115377%_
                                   (gx#syntax-e _%__stx2018620187%_)))
                              (let ((_%tl1535315384%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1535115377%_)))
                                    (_%hd1535215381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1535115377%_))))
                                (if (gx#identifier? _%hd1535215381%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21044_|
                                         _%hd1535215381%_)
                                        (_%__kont2018920190%_ _%tl1535315384%_)
                                        (_%__kont2019120192%_))
                                    (_%__kont2019120192%_))))
                            (_%__kont2019120192%_)))))))
          (let* ((_%__stx2020620207%_ _%stx14636%_)
                 (_%g1464714719%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2020620207%_))))
            (let ((_%__kont2020920210%_
                   (lambda (_%L15317%_ _%L15319%_ _%L15320%_ _%L15321%_)
                     (cons _%L15321%_
                           (cons (cons (cons _%L15320%_ (cons _%L15319%_ '()))
                                       '())
                                 _%L15317%_))))
                  (_%__kont2021120212%_
                   (lambda (_%L15239%_ _%L15241%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%L15241%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1526115264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1526215267%_)
                    (cons _%g1526115264%_ _%g1526215267%_))
                  '()
                  _%L15239%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2021520216%_
                   (lambda (_%L14806%_ _%L14808%_)
                     (let* ((_%g1483914865%_
                             (lambda (_%g1484014861%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1484014861%_)))
                            (_%g1483815150%_
                             (lambda (_%g1484014869%_)
                               (if (gx#stx-pair/null? _%g1484014869%_)
                                   (let ((_g21045_
                                          (gx#syntax-split-splice
                                           _%g1484014869%_
                                           '0)))
                                     (begin
                                       (let ((_g21046_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21045_)
                                                    (##vector-length _g21045_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21046_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21046_)))
                                       (let ((_%target1484314872%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21045_ 0)))
                                             (_%tl1484514875%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21045_ 1))))
                                         (if (gx#stx-null? _%tl1484514875%_)
                                             (letrec ((_%loop1484614878%_
                                                       (lambda (_%hd1484414882%_
                                                                _%e1485014885%_
                                                                _%hd1485114887%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1484414882%_)
                                                             (let ((_%e1484714890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1484414882%_)))
                       (let ((_%lp-hd1484814894%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1484714890%_)))
                             (_%lp-tl1484914897%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1484714890%_))))
                         (if (gx#stx-pair? _%lp-hd1484814894%_)
                             (let ((_%e1485414900%_
                                    (gx#syntax-e _%lp-hd1484814894%_)))
                               (let ((_%hd1485514904%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1485414900%_)))
                                     (_%tl1485614907%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1485414900%_))))
                                 (if (gx#stx-pair? _%tl1485614907%_)
                                     (let ((_%e1485714910%_
                                            (gx#syntax-e _%tl1485614907%_)))
                                       (let ((_%hd1485814914%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1485714910%_)))
                                             (_%tl1485914917%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1485714910%_))))
                                         (if (gx#stx-null? _%tl1485914917%_)
                                             (_%loop1484614878%_
                                              _%lp-tl1484914897%_
                                              (cons _%hd1485814914%_
                                                    _%e1485014885%_)
                                              (cons _%hd1485514904%_
                                                    _%hd1485114887%_))
                                             (_%g1483914865%_
                                              _%g1484014869%_))))
                                     (_%g1483914865%_ _%g1484014869%_))))
                             (_%g1483914865%_ _%g1484014869%_))))
                     (let ((_%e1485214920%_ (reverse _%e1485014885%_))
                           (_%hd1485314923%_ (reverse _%hd1485114887%_)))
                       ((lambda (_%L14926%_ _%L14928%_)
                          (let* ((_%g1494414961%_
                                  (lambda (_%g1494514957%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1494514957%_)))
                                 (_%g1494315138%_
                                  (lambda (_%g1494514965%_)
                                    (if (gx#stx-pair/null? _%g1494514965%_)
                                        (let ((_g21047_
                                               (gx#syntax-split-splice
                                                _%g1494514965%_
                                                '0)))
                                          (begin
                                            (let ((_g21048_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21047_)
                                                         (##vector-length
                                                          _g21047_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21048_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21048_)))
                                            (let ((_%target1494714968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g21047_
                                                      0)))
                                                  (_%tl1494914971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g21047_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1494914971%_)
                                                  (letrec ((_%loop1495014974%_
                                                            (lambda (_%hd1494814978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1495414981%_)
                      (if (gx#stx-pair? _%hd1494814978%_)
                          (let ((_%e1495114984%_
                                 (gx#syntax-e _%hd1494814978%_)))
                            (let ((_%lp-hd1495214988%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1495114984%_)))
                                  (_%lp-tl1495314991%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1495114984%_))))
                              (_%loop1495014974%_
                               _%lp-tl1495314991%_
                               (cons _%lp-hd1495214988%_ _%$e1495414981%_))))
                          (let ((_%$e1495514994%_ (reverse _%$e1495414981%_)))
                            ((lambda (_%L14998%_)
                               (let* ((_%g1501515032%_
                                       (lambda (_%g1501615028%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1501615028%_)))
                                      (_%g1501415126%_
                                       (lambda (_%g1501615036%_)
                                         (if (gx#stx-pair/null?
                                              _%g1501615036%_)
                                             (let ((_g21049_
                                                    (gx#syntax-split-splice
                                                     _%g1501615036%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21050_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g21049_)
                                                              (##vector-length
                                                               _g21049_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1501815039%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g21049_
                                                           0)))
                                                       (_%tl1502015042%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g21049_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1502015042%_)
                                                       (letrec ((_%loop1502115045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1501915049%_ _%hd-bind1502515052%_)
                           (if (gx#stx-pair? _%hd1501915049%_)
                               (let ((_%e1502215055%_
                                      (gx#syntax-e _%hd1501915049%_)))
                                 (let ((_%lp-hd1502315059%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1502215055%_)))
                                       (_%lp-tl1502415062%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1502215055%_))))
                                   (_%loop1502115045%_
                                    _%lp-tl1502415062%_
                                    (cons _%lp-hd1502315059%_
                                          _%hd-bind1502515052%_))))
                               (let ((_%hd-bind1502615065%_
                                      (reverse _%hd-bind1502515052%_)))
                                 ((lambda (_%L15069%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L14926%_
                                                   _%L14998%_)
                                                  (foldr (lambda (_%g1509415098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1509515101%_
                          _%g1509615103%_)
                   (cons (cons (cons _%g1509515101%_ '())
                               (cons _%g1509415098%_ '()))
                         _%g1509615103%_))
                 '()
                 _%L14926%_
                 _%L14998%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1508715106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1508815109%_)
                             (cons _%g1508715106%_ _%g1508815109%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%L14998%_
                                                _%L15069%_)
                                               (foldr (lambda (_%g1509115112%_
                                                               _%g1509215115%_
                                                               _%g1509315117%_)
                                                        (cons (cons _%g1509215115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1509115112%_ '()))
                      _%g1509315117%_))
              '()
              _%L14998%_
              _%L15069%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1508915120%_
                                                             _%g1509015123%_)
                                                      (cons _%g1508915120%_
                                                            _%g1509015123%_))
                                                    '()
                                                    _%L14806%_)))
                                 '())
                           _%L14998%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1502615065%_))))))
                 (_%loop1502115045%_ _%target1501815039%_ '()))
               (_%g1501515032%_ _%g1501615036%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1501515032%_
                                              _%g1501615036%_)))))
                                 (_%g1501415126%_
                                  (gx#stx-map
                                   _%let-head14643%_
                                   (foldr (lambda (_%g1512915132%_
                                                   _%g1513015135%_)
                                            (cons _%g1512915132%_
                                                  _%g1513015135%_))
                                          '()
                                          _%L14928%_)))))
                             _%$e1495514994%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1495014974%_
                                                     _%target1494714968%_
                                                     '()))
                                                  (_%g1494414961%_
                                                   _%g1494514965%_)))))
                                        (_%g1494414961%_ _%g1494514965%_)))))
                            (_%g1494315138%_
                             (gx#gentemps
                              (foldr (lambda (_%g1514115144%_ _%g1514215147%_)
                                       (cons _%g1514115144%_ _%g1514215147%_))
                                     '()
                                     _%L14928%_)))))
                        _%e1485214920%_
                        _%hd1485314923%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1484614878%_
                                                _%target1484314872%_
                                                '()
                                                '()))
                                             (_%g1483914865%_
                                              _%g1484014869%_)))))
                                   (_%g1483914865%_ _%g1484014869%_)))))
                       (_%g1483815150%_
                        (gx#stx-map
                         _%let-bind14641%_
                         (foldr (lambda (_%g1515315156%_ _%g1515415159%_)
                                  (cons _%g1515315156%_ _%g1515415159%_))
                                '()
                                _%L14808%_)))))))
              (let* ((_%__match2030320304%_
                      (lambda (_%e1469014726%_
                               _%hd1469114730%_
                               _%tl1469214733%_
                               _%e1469314736%_
                               _%hd1469414740%_
                               _%tl1469514743%_
                               _%__splice2021720218%_
                               _%target1469614746%_
                               _%tl1469814749%_)
                        (letrec ((_%loop1469914752%_
                                  (lambda (_%hd1469714756%_ _%bind1470314759%_)
                                    (if (gx#stx-pair? _%hd1469714756%_)
                                        (let ((_%e1470014762%_
                                               (gx#syntax-e _%hd1469714756%_)))
                                          (let ((_%lp-tl1470214769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1470014762%_)))
                                                (_%lp-hd1470114766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1470014762%_))))
                                            (_%loop1469914752%_
                                             _%lp-tl1470214769%_
                                             (cons _%lp-hd1470114766%_
                                                   _%bind1470314759%_))))
                                        (let ((_%bind1470414772%_
                                               (reverse _%bind1470314759%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1469514743%_)
                                              (let ((_%__splice2021920220%_
                                                     (gx#syntax-split-splice
                                                      _%tl1469514743%_
                                                      '0)))
                                                (let ((_%tl1470714779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2021920220%_
                                                          '1)))
                                                      (_%target1470514776%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2021920220%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1470714779%_)
                                                      (letrec ((_%loop1470814782%_
                                                                (lambda (_%hd1470614786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1471214789%_)
                          (if (gx#stx-pair? _%hd1470614786%_)
                              (let ((_%e1470914792%_
                                     (gx#syntax-e _%hd1470614786%_)))
                                (let ((_%lp-tl1471114799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1470914792%_)))
                                      (_%lp-hd1471014796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1470914792%_))))
                                  (_%loop1470814782%_
                                   _%lp-tl1471114799%_
                                   (cons _%lp-hd1471014796%_
                                         _%body1471214789%_))))
                              (let ((_%body1471314802%_
                                     (reverse _%body1471214789%_)))
                                (let ((_%L14806%_ _%body1471314802%_)
                                      (_%L14808%_ _%bind1470414772%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14639%_
                                       (foldr (lambda (_%g1483014833%_
                                                       _%g1483114836%_)
                                                (cons _%g1483014833%_
                                                      _%g1483114836%_))
                                              '()
                                              _%L14808%_))
                                      (_%__kont2021520216%_
                                       _%L14806%_
                                       _%L14808%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1464714719%_)))))))))
                (_%loop1470814782%_ _%target1470514776%_ '()))
              (let () (declare (not safe)) (_%g1464714719%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1464714719%_))))))))
                          (_%loop1469914752%_ _%target1469614746%_ '()))))
                     (_%__match2028320284%_
                      (lambda (_%e1466715169%_
                               _%hd1466815173%_
                               _%tl1466915176%_
                               _%e1467015179%_
                               _%hd1467115183%_
                               _%tl1467215186%_
                               _%e1467315189%_
                               _%hd1467415193%_
                               _%tl1467515196%_
                               _%e1467615199%_
                               _%hd1467715203%_
                               _%tl1467815206%_
                               _%__splice2021320214%_
                               _%target1467915209%_
                               _%tl1468115212%_)
                        (letrec ((_%loop1468215215%_
                                  (lambda (_%hd1468015219%_ _%body1468615222%_)
                                    (if (gx#stx-pair? _%hd1468015219%_)
                                        (let ((_%e1468315225%_
                                               (gx#syntax-e _%hd1468015219%_)))
                                          (let ((_%lp-tl1468515232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1468315225%_)))
                                                (_%lp-hd1468415229%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1468315225%_))))
                                            (_%loop1468215215%_
                                             _%lp-tl1468515232%_
                                             (cons _%lp-hd1468415229%_
                                                   _%body1468615222%_))))
                                        (let ((_%body1468715235%_
                                               (reverse _%body1468615222%_)))
                                          (_%__kont2021120212%_
                                           _%body1468715235%_
                                           _%hd1467715203%_))))))
                          (_%loop1468215215%_ _%target1467915209%_ '()))))
                     (_%__match2024720248%_
                      (lambda (_%e1465315277%_
                               _%hd1465415281%_
                               _%tl1465515284%_
                               _%e1465615287%_
                               _%hd1465715291%_
                               _%tl1465815294%_
                               _%e1465915297%_
                               _%hd1466015301%_
                               _%tl1466115304%_
                               _%e1466215307%_
                               _%hd1466315311%_
                               _%tl1466415314%_)
                        (let ((_%L15317%_ _%tl1465815294%_)
                              (_%L15319%_ _%hd1466315311%_)
                              (_%L15320%_ _%hd1466015301%_)
                              (_%L15321%_ _%hd1465415281%_))
                          (if (_%let-head?14642%_ _%L15320%_)
                              (_%__kont2020920210%_
                               _%L15317%_
                               _%L15319%_
                               _%L15320%_
                               _%L15321%_)
                              (if (gx#stx-pair? _%hd1466015301%_)
                                  (let ((_%e1467615199%_
                                         (gx#syntax-e _%hd1466015301%_)))
                                    (let ((_%tl1467815206%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1467615199%_)))
                                          (_%hd1467715203%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1467615199%_))))
                                      (if (gx#stx-pair/null? _%hd1465715291%_)
                                          (let ((_%__splice2021720218%_
                                                 (gx#syntax-split-splice
                                                  _%hd1465715291%_
                                                  '0)))
                                            (let ((_%tl1469814749%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2021720218%_
                                                      '1)))
                                                  (_%target1469614746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2021720218%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1469814749%_)
                                                  (_%__match2030320304%_
                                                   _%e1465315277%_
                                                   _%hd1465415281%_
                                                   _%tl1465515284%_
                                                   _%e1465615287%_
                                                   _%hd1465715291%_
                                                   _%tl1465815294%_
                                                   _%__splice2021720218%_
                                                   _%target1469614746%_
                                                   _%tl1469814749%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1464714719%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1464714719%_)))))
                                  (if (gx#stx-pair/null? _%hd1465715291%_)
                                      (let ((_%__splice2021720218%_
                                             (gx#syntax-split-splice
                                              _%hd1465715291%_
                                              '0)))
                                        (let ((_%tl1469814749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2021720218%_
                                                  '1)))
                                              (_%target1469614746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2021720218%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1469814749%_)
                                              (_%__match2030320304%_
                                               _%e1465315277%_
                                               _%hd1465415281%_
                                               _%tl1465515284%_
                                               _%e1465615287%_
                                               _%hd1465715291%_
                                               _%tl1465815294%_
                                               _%__splice2021720218%_
                                               _%target1469614746%_
                                               _%tl1469814749%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1464714719%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1464714719%_)))))))))
                (if (gx#stx-pair? _%__stx2020620207%_)
                    (let ((_%e1465315277%_ (gx#syntax-e _%__stx2020620207%_)))
                      (let ((_%tl1465515284%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1465315277%_)))
                            (_%hd1465415281%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1465315277%_))))
                        (if (gx#stx-pair? _%tl1465515284%_)
                            (let ((_%e1465615287%_
                                   (gx#syntax-e _%tl1465515284%_)))
                              (let ((_%tl1465815294%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1465615287%_)))
                                    (_%hd1465715291%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1465615287%_))))
                                (if (gx#stx-pair? _%hd1465715291%_)
                                    (let ((_%e1465915297%_
                                           (gx#syntax-e _%hd1465715291%_)))
                                      (let ((_%tl1466115304%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1465915297%_)))
                                            (_%hd1466015301%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1465915297%_))))
                                        (if (gx#stx-pair? _%tl1466115304%_)
                                            (let ((_%e1466215307%_
                                                   (gx#syntax-e
                                                    _%tl1466115304%_)))
                                              (let ((_%tl1466415314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1466215307%_)))
                                                    (_%hd1466315311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1466215307%_))))
                                                (if (gx#stx-null?
                                                     _%tl1466415314%_)
                                                    (_%__match2024720248%_
                                                     _%e1465315277%_
                                                     _%hd1465415281%_
                                                     _%tl1465515284%_
                                                     _%e1465615287%_
                                                     _%hd1465715291%_
                                                     _%tl1465815294%_
                                                     _%e1465915297%_
                                                     _%hd1466015301%_
                                                     _%tl1466115304%_
                                                     _%e1466215307%_
                                                     _%hd1466315311%_
                                                     _%tl1466415314%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1466015301%_)
                                                        (let ((_%e1467615199%_
                                                               (gx#syntax-e
                                                                _%hd1466015301%_)))
                                                          (let ((_%tl1467815206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1467615199%_)))
                        (_%hd1467715203%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1467615199%_))))
                    (if (gx#stx-pair/null? _%hd1465715291%_)
                        (let ((_%__splice2021720218%_
                               (gx#syntax-split-splice _%hd1465715291%_ '0)))
                          (let ((_%tl1469814749%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021720218%_ '1)))
                                (_%target1469614746%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021720218%_ '0))))
                            (if (gx#stx-null? _%tl1469814749%_)
                                (_%__match2030320304%_
                                 _%e1465315277%_
                                 _%hd1465415281%_
                                 _%tl1465515284%_
                                 _%e1465615287%_
                                 _%hd1465715291%_
                                 _%tl1465815294%_
                                 _%__splice2021720218%_
                                 _%target1469614746%_
                                 _%tl1469814749%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1464714719%_)))))
                        (let () (declare (not safe)) (_%g1464714719%_)))))
                (if (gx#stx-pair/null? _%hd1465715291%_)
                    (let ((_%__splice2021720218%_
                           (gx#syntax-split-splice _%hd1465715291%_ '0)))
                      (let ((_%tl1469814749%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021720218%_ '1)))
                            (_%target1469614746%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021720218%_ '0))))
                        (if (gx#stx-null? _%tl1469814749%_)
                            (_%__match2030320304%_
                             _%e1465315277%_
                             _%hd1465415281%_
                             _%tl1465515284%_
                             _%e1465615287%_
                             _%hd1465715291%_
                             _%tl1465815294%_
                             _%__splice2021720218%_
                             _%target1469614746%_
                             _%tl1469814749%_)
                            (let () (declare (not safe)) (_%g1464714719%_)))))
                    (let () (declare (not safe)) (_%g1464714719%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1466015301%_)
                                                (let ((_%e1467615199%_
                                                       (gx#syntax-e
                                                        _%hd1466015301%_)))
                                                  (let ((_%tl1467815206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1467615199%_)))
                                                        (_%hd1467715203%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1467615199%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1467815206%_)
                                                        (if (gx#stx-null?
                                                             _%tl1466115304%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1465815294%_)
                        (let ((_%__splice2021320214%_
                               (gx#syntax-split-splice _%tl1465815294%_ '0)))
                          (let ((_%tl1468115212%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021320214%_ '1)))
                                (_%target1467915209%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021320214%_ '0))))
                            (if (gx#stx-null? _%tl1468115212%_)
                                (_%__match2028320284%_
                                 _%e1465315277%_
                                 _%hd1465415281%_
                                 _%tl1465515284%_
                                 _%e1465615287%_
                                 _%hd1465715291%_
                                 _%tl1465815294%_
                                 _%e1465915297%_
                                 _%hd1466015301%_
                                 _%tl1466115304%_
                                 _%e1467615199%_
                                 _%hd1467715203%_
                                 _%tl1467815206%_
                                 _%__splice2021320214%_
                                 _%target1467915209%_
                                 _%tl1468115212%_)
                                (if (gx#stx-pair/null? _%hd1465715291%_)
                                    (let ((_%__splice2021720218%_
                                           (gx#syntax-split-splice
                                            _%hd1465715291%_
                                            '0)))
                                      (let ((_%tl1469814749%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2021720218%_
                                                '1)))
                                            (_%target1469614746%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2021720218%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1469814749%_)
                                            (_%__match2030320304%_
                                             _%e1465315277%_
                                             _%hd1465415281%_
                                             _%tl1465515284%_
                                             _%e1465615287%_
                                             _%hd1465715291%_
                                             _%tl1465815294%_
                                             _%__splice2021720218%_
                                             _%target1469614746%_
                                             _%tl1469814749%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1464714719%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1464714719%_))))))
                        (if (gx#stx-pair/null? _%hd1465715291%_)
                            (let ((_%__splice2021720218%_
                                   (gx#syntax-split-splice
                                    _%hd1465715291%_
                                    '0)))
                              (let ((_%tl1469814749%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2021720218%_
                                        '1)))
                                    (_%target1469614746%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2021720218%_
                                        '0))))
                                (if (gx#stx-null? _%tl1469814749%_)
                                    (_%__match2030320304%_
                                     _%e1465315277%_
                                     _%hd1465415281%_
                                     _%tl1465515284%_
                                     _%e1465615287%_
                                     _%hd1465715291%_
                                     _%tl1465815294%_
                                     _%__splice2021720218%_
                                     _%target1469614746%_
                                     _%tl1469814749%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1464714719%_)))))
                            (let () (declare (not safe)) (_%g1464714719%_))))
                    (if (gx#stx-pair/null? _%hd1465715291%_)
                        (let ((_%__splice2021720218%_
                               (gx#syntax-split-splice _%hd1465715291%_ '0)))
                          (let ((_%tl1469814749%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021720218%_ '1)))
                                (_%target1469614746%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021720218%_ '0))))
                            (if (gx#stx-null? _%tl1469814749%_)
                                (_%__match2030320304%_
                                 _%e1465315277%_
                                 _%hd1465415281%_
                                 _%tl1465515284%_
                                 _%e1465615287%_
                                 _%hd1465715291%_
                                 _%tl1465815294%_
                                 _%__splice2021720218%_
                                 _%target1469614746%_
                                 _%tl1469814749%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1464714719%_)))))
                        (let () (declare (not safe)) (_%g1464714719%_))))
                (if (gx#stx-pair/null? _%hd1465715291%_)
                    (let ((_%__splice2021720218%_
                           (gx#syntax-split-splice _%hd1465715291%_ '0)))
                      (let ((_%tl1469814749%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021720218%_ '1)))
                            (_%target1469614746%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021720218%_ '0))))
                        (if (gx#stx-null? _%tl1469814749%_)
                            (_%__match2030320304%_
                             _%e1465315277%_
                             _%hd1465415281%_
                             _%tl1465515284%_
                             _%e1465615287%_
                             _%hd1465715291%_
                             _%tl1465815294%_
                             _%__splice2021720218%_
                             _%target1469614746%_
                             _%tl1469814749%_)
                            (let () (declare (not safe)) (_%g1464714719%_)))))
                    (let () (declare (not safe)) (_%g1464714719%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1465715291%_)
                                                    (let ((_%__splice2021720218%_
                                                           (gx#syntax-split-splice
                                                            _%hd1465715291%_
                                                            '0)))
                                                      (let ((_%tl1469814749%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2021720218%_ '1)))
                    (_%target1469614746%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2021720218%_ '0))))
                (if (gx#stx-null? _%tl1469814749%_)
                    (_%__match2030320304%_
                     _%e1465315277%_
                     _%hd1465415281%_
                     _%tl1465515284%_
                     _%e1465615287%_
                     _%hd1465715291%_
                     _%tl1465815294%_
                     _%__splice2021720218%_
                     _%target1469614746%_
                     _%tl1469814749%_)
                    (let () (declare (not safe)) (_%g1464714719%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1464714719%_)))))))
                                    (if (gx#stx-pair/null? _%hd1465715291%_)
                                        (let ((_%__splice2021720218%_
                                               (gx#syntax-split-splice
                                                _%hd1465715291%_
                                                '0)))
                                          (let ((_%tl1469814749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2021720218%_
                                                    '1)))
                                                (_%target1469614746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2021720218%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1469814749%_)
                                                (_%__match2030320304%_
                                                 _%e1465315277%_
                                                 _%hd1465415281%_
                                                 _%tl1465515284%_
                                                 _%e1465615287%_
                                                 _%hd1465715291%_
                                                 _%tl1465815294%_
                                                 _%__splice2021720218%_
                                                 _%target1469614746%_
                                                 _%tl1469814749%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1464714719%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1464714719%_))))))
                            (let () (declare (not safe)) (_%g1464714719%_)))))
                    (let () (declare (not safe)) (_%g1464714719%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15679%_)
        (let* ((_%__stx2030620307%_ _%$stx15679%_)
               (_%g1568515736%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2030620307%_))))
          (let ((_%__kont2030920310%_ (lambda () '#t))
                (_%__kont2031120312%_
                 (lambda (_%L15894%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1591015913%_ _%g1591115916%_)
                                        (cons _%g1591015913%_ _%g1591115916%_))
                                      '()
                                      _%L15894%_)))))
                (_%__kont2031520316%_
                 (lambda (_%L15803%_ _%L15805%_ _%L15806%_ _%L15807%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%L15806%_ '())
                               (cons (cons _%L15807%_
                                           (cons _%L15805%_
                                                 (foldr (lambda (_%g1582815831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1582915834%_)
                  (cons _%g1582815831%_ _%g1582915834%_))
                '()
                _%L15803%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2038320384%_
                    (lambda (_%e1571315743%_
                             _%hd1571415747%_
                             _%tl1571515750%_
                             _%e1571615753%_
                             _%hd1571715757%_
                             _%tl1571815760%_
                             _%e1571915763%_
                             _%hd1572015767%_
                             _%tl1572115770%_
                             _%__splice2031720318%_
                             _%target1572215773%_
                             _%tl1572415776%_)
                      (letrec ((_%loop1572515779%_
                                (lambda (_%hd1572315783%_ _%body1572915786%_)
                                  (if (gx#stx-pair? _%hd1572315783%_)
                                      (let ((_%e1572615789%_
                                             (gx#syntax-e _%hd1572315783%_)))
                                        (let ((_%lp-tl1572815796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1572615789%_)))
                                              (_%lp-hd1572715793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1572615789%_))))
                                          (_%loop1572515779%_
                                           _%lp-tl1572815796%_
                                           (cons _%lp-hd1572715793%_
                                                 _%body1572915786%_))))
                                      (let ((_%body1573015799%_
                                             (reverse _%body1572915786%_)))
                                        (_%__kont2031520316%_
                                         _%body1573015799%_
                                         _%tl1572115770%_
                                         _%hd1572015767%_
                                         _%hd1571415747%_))))))
                        (_%loop1572515779%_ _%target1572215773%_ '()))))
                   (_%__match2035720358%_
                    (lambda (_%e1569415844%_
                             _%hd1569515848%_
                             _%tl1569615851%_
                             _%e1569715854%_
                             _%hd1569815858%_
                             _%tl1569915861%_
                             _%__splice2031320314%_
                             _%target1570015864%_
                             _%tl1570215867%_)
                      (letrec ((_%loop1570315870%_
                                (lambda (_%hd1570115874%_ _%body1570715877%_)
                                  (if (gx#stx-pair? _%hd1570115874%_)
                                      (let ((_%e1570415880%_
                                             (gx#syntax-e _%hd1570115874%_)))
                                        (let ((_%lp-tl1570615887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1570415880%_)))
                                              (_%lp-hd1570515884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1570415880%_))))
                                          (_%loop1570315870%_
                                           _%lp-tl1570615887%_
                                           (cons _%lp-hd1570515884%_
                                                 _%body1570715877%_))))
                                      (let ((_%body1570815890%_
                                             (reverse _%body1570715877%_)))
                                        (_%__kont2031120312%_
                                         _%body1570815890%_))))))
                        (_%loop1570315870%_ _%target1570015864%_ '())))))
              (if (gx#stx-pair? _%__stx2030620307%_)
                  (let ((_%e1568715926%_ (gx#syntax-e _%__stx2030620307%_)))
                    (let ((_%tl1568915933%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1568715926%_)))
                          (_%hd1568815930%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1568715926%_))))
                      (if (gx#stx-pair? _%tl1568915933%_)
                          (let ((_%e1569015936%_
                                 (gx#syntax-e _%tl1568915933%_)))
                            (let ((_%tl1569215943%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1569015936%_)))
                                  (_%hd1569115940%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1569015936%_))))
                              (if (gx#stx-null? _%hd1569115940%_)
                                  (if (gx#stx-null? _%tl1569215943%_)
                                      (_%__kont2030920310%_)
                                      (if (gx#stx-pair/null? _%tl1569215943%_)
                                          (let ((_%__splice2031320314%_
                                                 (gx#syntax-split-splice
                                                  _%tl1569215943%_
                                                  '0)))
                                            (let ((_%tl1570215867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2031320314%_
                                                      '1)))
                                                  (_%target1570015864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2031320314%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1570215867%_)
                                                  (_%__match2035720358%_
                                                   _%e1568715926%_
                                                   _%hd1568815930%_
                                                   _%tl1568915933%_
                                                   _%e1569015936%_
                                                   _%hd1569115940%_
                                                   _%tl1569215943%_
                                                   _%__splice2031320314%_
                                                   _%target1570015864%_
                                                   _%tl1570215867%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1568515736%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1568515736%_))))
                                  (if (gx#stx-pair? _%hd1569115940%_)
                                      (let ((_%e1571915763%_
                                             (gx#syntax-e _%hd1569115940%_)))
                                        (let ((_%tl1572115770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1571915763%_)))
                                              (_%hd1572015767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1571915763%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1569215943%_)
                                              (let ((_%__splice2031720318%_
                                                     (gx#syntax-split-splice
                                                      _%tl1569215943%_
                                                      '0)))
                                                (let ((_%tl1572415776%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2031720318%_
                                                          '1)))
                                                      (_%target1572215773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2031720318%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1572415776%_)
                                                      (_%__match2038320384%_
                                                       _%e1568715926%_
                                                       _%hd1568815930%_
                                                       _%tl1568915933%_
                                                       _%e1569015936%_
                                                       _%hd1569115940%_
                                                       _%tl1569215943%_
                                                       _%e1571915763%_
                                                       _%hd1572015767%_
                                                       _%tl1572115770%_
                                                       _%__splice2031720318%_
                                                       _%target1572215773%_
                                                       _%tl1572415776%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1568515736%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1568515736%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1568515736%_))))))
                          (let () (declare (not safe)) (_%g1568515736%_)))))
                  (let () (declare (not safe)) (_%g1568515736%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15956%_)
        (let* ((_%__stx2038620387%_ _%$stx15956%_)
               (_%g1596716045%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2038620387%_))))
          (let ((_%__kont2038920390%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2039120392%_
                 (lambda (_%L16376%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L16376%_ '()))))
                (_%__kont2039320394%_
                 (lambda (_%L16324%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%L16324%_ '()))))
                (_%__kont2039520396%_ (lambda (_%L16271%_) _%L16271%_))
                (_%__kont2039720398%_
                 (lambda (_%L16213%_ _%L16215%_) _%L16215%_))
                (_%__kont2039920400%_
                 (lambda (_%L16155%_ _%L16157%_ _%L16158%_ _%L16159%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%L16159%_ _%L16155%_)
                                     (cons _%L16158%_ '()))))))
                (_%__kont2040120402%_
                 (lambda (_%L16101%_ _%L16103%_ _%L16104%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%L16103%_
                               (cons (cons _%L16104%_ _%L16101%_) '())))))
                (_%__kont2040320404%_ (lambda (_%L16062%_) _%L16062%_)))
            (let* ((_%__match2052520526%_
                    (lambda (_%e1601816125%_
                             _%hd1601916129%_
                             _%tl1602016132%_
                             _%e1602116135%_
                             _%hd1602216139%_
                             _%tl1602316142%_
                             _%e1602416145%_
                             _%hd1602516149%_
                             _%tl1602616152%_)
                      (let ((_%L16155%_ _%tl1602616152%_)
                            (_%L16157%_ _%hd1602516149%_)
                            (_%L16158%_ _%hd1602216139%_)
                            (_%L16159%_ _%hd1601916129%_))
                        (if (gx#ellipsis? _%L16157%_)
                            (_%__kont2039920400%_
                             _%L16155%_
                             _%L16157%_
                             _%L16158%_
                             _%L16159%_)
                            (_%__kont2040120402%_
                             _%tl1602316142%_
                             _%hd1602216139%_
                             _%hd1601916129%_)))))
                   (_%__match2050720508%_
                    (lambda (_%e1600516183%_
                             _%hd1600616187%_
                             _%tl1600716190%_
                             _%e1600816193%_
                             _%hd1600916197%_
                             _%tl1601016200%_
                             _%e1601116203%_
                             _%hd1601216207%_
                             _%tl1601316210%_)
                      (let ((_%L16213%_ _%hd1601216207%_)
                            (_%L16215%_ _%hd1600916197%_))
                        (if (gx#ellipsis? _%L16213%_)
                            (_%__kont2039720398%_ _%L16213%_ _%L16215%_)
                            (_%__match2052520526%_
                             _%e1600516183%_
                             _%hd1600616187%_
                             _%tl1600716190%_
                             _%e1600816193%_
                             _%hd1600916197%_
                             _%tl1601016200%_
                             _%e1601116203%_
                             _%hd1601216207%_
                             _%tl1601316210%_))))))
              (if (gx#stx-pair? _%__stx2038620387%_)
                  (let ((_%e1596916398%_ (gx#syntax-e _%__stx2038620387%_)))
                    (let ((_%tl1597116405%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1596916398%_)))
                          (_%hd1597016402%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1596916398%_))))
                      (if (gx#stx-null? _%tl1597116405%_)
                          (_%__kont2038920390%_)
                          (if (gx#stx-pair? _%tl1597116405%_)
                              (let ((_%e1597616356%_
                                     (gx#syntax-e _%tl1597116405%_)))
                                (let ((_%tl1597816363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1597616356%_)))
                                      (_%hd1597716360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1597616356%_))))
                                  (if (gx#identifier? _%hd1597716360%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21051_|
                                           _%hd1597716360%_)
                                          (if (gx#stx-pair? _%tl1597816363%_)
                                              (let ((_%e1597916366%_
                                                     (gx#syntax-e
                                                      _%tl1597816363%_)))
                                                (let ((_%tl1598116373%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1597916366%_)))
                                                      (_%hd1598016370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1597916366%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1598116373%_)
                                                      (_%__kont2039120392%_
                                                       _%hd1598016370%_)
                                                      (_%__match2052520526%_
                                                       _%e1596916398%_
                                                       _%hd1597016402%_
                                                       _%tl1597116405%_
                                                       _%e1597616356%_
                                                       _%hd1597716360%_
                                                       _%tl1597816363%_
                                                       _%e1597916366%_
                                                       _%hd1598016370%_
                                                       _%tl1598116373%_))))
                                              (_%__kont2040120402%_
                                               _%tl1597816363%_
                                               _%hd1597716360%_
                                               _%hd1597016402%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21052_|
                                               _%hd1597716360%_)
                                              (if (gx#stx-pair?
                                                   _%tl1597816363%_)
                                                  (let ((_%e1598916314%_
                                                         (gx#syntax-e
                                                          _%tl1597816363%_)))
                                                    (let ((_%tl1599116321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1598916314%_)))
                                                          (_%hd1599016318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1598916314%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1599116321%_)
                                                          (_%__kont2039320394%_
                                                           _%hd1599016318%_)
                                                          (_%__match2052520526%_
                                                           _%e1596916398%_
                                                           _%hd1597016402%_
                                                           _%tl1597116405%_
                                                           _%e1597616356%_
                                                           _%hd1597716360%_
                                                           _%tl1597816363%_
                                                           _%e1598916314%_
                                                           _%hd1599016318%_
                                                           _%tl1599116321%_))))
                                                  (_%__kont2040120402%_
                                                   _%tl1597816363%_
                                                   _%hd1597716360%_
                                                   _%hd1597016402%_))
                                              (if (gx#stx-pair?
                                                   _%tl1597816363%_)
                                                  (let ((_%e1601116203%_
                                                         (gx#syntax-e
                                                          _%tl1597816363%_)))
                                                    (let ((_%tl1601316210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1601116203%_)))
                                                          (_%hd1601216207%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1601116203%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1601316210%_)
                                                          (_%__match2050720508%_
                                                           _%e1596916398%_
                                                           _%hd1597016402%_
                                                           _%tl1597116405%_
                                                           _%e1597616356%_
                                                           _%hd1597716360%_
                                                           _%tl1597816363%_
                                                           _%e1601116203%_
                                                           _%hd1601216207%_
                                                           _%tl1601316210%_)
                                                          (_%__match2052520526%_
                                                           _%e1596916398%_
                                                           _%hd1597016402%_
                                                           _%tl1597116405%_
                                                           _%e1597616356%_
                                                           _%hd1597716360%_
                                                           _%tl1597816363%_
                                                           _%e1601116203%_
                                                           _%hd1601216207%_
                                                           _%tl1601316210%_))))
                                                  (_%__kont2040120402%_
                                                   _%tl1597816363%_
                                                   _%hd1597716360%_
                                                   _%hd1597016402%_))))
                                      (if (gx#stx-datum? _%hd1597716360%_)
                                          (let ((_%e1599916257%_
                                                 (gx#stx-e _%hd1597716360%_)))
                                            (if (equal? _%e1599916257%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1597816363%_)
                                                    (let ((_%e1600016261%_
                                                           (gx#syntax-e
                                                            _%tl1597816363%_)))
                                                      (let ((_%tl1600216268%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1600016261%_)))
                    (_%hd1600116265%_
                     (let () (declare (not safe)) (##car _%e1600016261%_))))
                (if (gx#stx-null? _%tl1600216268%_)
                    (_%__kont2039520396%_ _%hd1600116265%_)
                    (_%__match2052520526%_
                     _%e1596916398%_
                     _%hd1597016402%_
                     _%tl1597116405%_
                     _%e1597616356%_
                     _%hd1597716360%_
                     _%tl1597816363%_
                     _%e1600016261%_
                     _%hd1600116265%_
                     _%tl1600216268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2040120402%_
                                                     _%tl1597816363%_
                                                     _%hd1597716360%_
                                                     _%hd1597016402%_))
                                                (if (gx#stx-pair?
                                                     _%tl1597816363%_)
                                                    (let ((_%e1601116203%_
                                                           (gx#syntax-e
                                                            _%tl1597816363%_)))
                                                      (let ((_%tl1601316210%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1601116203%_)))
                    (_%hd1601216207%_
                     (let () (declare (not safe)) (##car _%e1601116203%_))))
                (if (gx#stx-null? _%tl1601316210%_)
                    (_%__match2050720508%_
                     _%e1596916398%_
                     _%hd1597016402%_
                     _%tl1597116405%_
                     _%e1597616356%_
                     _%hd1597716360%_
                     _%tl1597816363%_
                     _%e1601116203%_
                     _%hd1601216207%_
                     _%tl1601316210%_)
                    (_%__match2052520526%_
                     _%e1596916398%_
                     _%hd1597016402%_
                     _%tl1597116405%_
                     _%e1597616356%_
                     _%hd1597716360%_
                     _%tl1597816363%_
                     _%e1601116203%_
                     _%hd1601216207%_
                     _%tl1601316210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2040120402%_
                                                     _%tl1597816363%_
                                                     _%hd1597716360%_
                                                     _%hd1597016402%_))))
                                          (if (gx#stx-pair? _%tl1597816363%_)
                                              (let ((_%e1601116203%_
                                                     (gx#syntax-e
                                                      _%tl1597816363%_)))
                                                (let ((_%tl1601316210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1601116203%_)))
                                                      (_%hd1601216207%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1601116203%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1601316210%_)
                                                      (_%__match2050720508%_
                                                       _%e1596916398%_
                                                       _%hd1597016402%_
                                                       _%tl1597116405%_
                                                       _%e1597616356%_
                                                       _%hd1597716360%_
                                                       _%tl1597816363%_
                                                       _%e1601116203%_
                                                       _%hd1601216207%_
                                                       _%tl1601316210%_)
                                                      (_%__match2052520526%_
                                                       _%e1596916398%_
                                                       _%hd1597016402%_
                                                       _%tl1597116405%_
                                                       _%e1597616356%_
                                                       _%hd1597716360%_
                                                       _%tl1597816363%_
                                                       _%e1601116203%_
                                                       _%hd1601216207%_
                                                       _%tl1601316210%_))))
                                              (_%__kont2040120402%_
                                               _%tl1597816363%_
                                               _%hd1597716360%_
                                               _%hd1597016402%_))))))
                              (_%__kont2040320404%_ _%tl1597116405%_)))))
                  (let () (declare (not safe)) (_%g1596716045%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx16416%_)
        (letrec ((_%simple-quote?16419%_
                  (lambda (_%e17111%_)
                    (let* ((_%__stx2054620547%_ _%e17111%_)
                           (_%g1711917156%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2054620547%_))))
                      (let ((_%__kont2054920550%_ (lambda () '#f))
                            (_%__kont2055120552%_ (lambda () '#f))
                            (_%__kont2055320554%_
                             (lambda (_%L17270%_ _%L17272%_)
                               (if (_%simple-quote?16419%_ _%L17272%_)
                                   (_%simple-quote?16419%_ _%L17270%_)
                                   '#f)))
                            (_%__kont2055520556%_
                             (lambda (_%L17231%_)
                               (_%simple-quote?16419%_
                                (foldr (lambda (_%g1724417247%_
                                                _%g1724517250%_)
                                         (cons _%g1724417247%_
                                               _%g1724517250%_))
                                       '()
                                       _%L17231%_))))
                            (_%__kont2055920560%_
                             (lambda (_%L17178%_)
                               (_%simple-quote?16419%_ _%L17178%_)))
                            (_%__kont2056120562%_ (lambda () '#t)))
                        (let* ((_%g1711717190%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2054620547%_)
                                      (let ((_%e1715017174%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2054620547%_))))
                                        (_%__kont2055920560%_ _%e1715017174%_))
                                      (_%__kont2056120562%_))))
                               (_%__match2061720618%_
                                (lambda (_%e1713917197%_
                                         _%__splice2055720558%_
                                         _%target1714017201%_
                                         _%tl1714217204%_)
                                  (letrec ((_%loop1714317207%_
                                            (lambda (_%hd1714117211%_
                                                     _%e1714717214%_)
                                              (if (gx#stx-pair?
                                                   _%hd1714117211%_)
                                                  (let ((_%e1714417217%_
                                                         (gx#syntax-e
                                                          _%hd1714117211%_)))
                                                    (let ((_%lp-tl1714617224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1714417217%_)))
                                                          (_%lp-hd1714517221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1714417217%_))))
                                                      (_%loop1714317207%_
                                                       _%lp-tl1714617224%_
                                                       (cons _%lp-hd1714517221%_
                                                             _%e1714717214%_))))
                                                  (let ((_%e1714817227%_
                                                         (reverse _%e1714717214%_)))
                                                    (_%__kont2055520556%_
                                                     _%e1714817227%_))))))
                                    (_%loop1714317207%_
                                     _%target1714017201%_
                                     '()))))
                               (_%g1711617253%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2054620547%_)
                                      (let ((_%e1713917197%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2054620547%_))))
                                        (if (gx#stx-pair/null? _%e1713917197%_)
                                            (let ((_%__splice2055720558%_
                                                   (gx#syntax-split-splice
                                                    _%e1713917197%_
                                                    '0)))
                                              (let ((_%tl1714217204%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055720558%_
                                                        '1)))
                                                    (_%target1714017201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055720558%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1714217204%_)
                                                    (_%__match2061720618%_
                                                     _%e1713917197%_
                                                     _%__splice2055720558%_
                                                     _%target1714017201%_
                                                     _%tl1714217204%_)
                                                    (_%__kont2056120562%_))))
                                            (_%__kont2056120562%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1711717190%_))))))
                          (if (gx#stx-pair? _%__stx2054620547%_)
                              (let ((_%e1712117321%_
                                     (gx#syntax-e _%__stx2054620547%_)))
                                (let ((_%tl1712317328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1712117321%_)))
                                      (_%hd1712217325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1712117321%_))))
                                  (if (gx#identifier? _%hd1712217325%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21053_|
                                           _%hd1712217325%_)
                                          (if (gx#stx-pair? _%tl1712317328%_)
                                              (let ((_%e1712417331%_
                                                     (gx#syntax-e
                                                      _%tl1712317328%_)))
                                                (let ((_%tl1712617338%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1712417331%_)))
                                                      (_%hd1712517335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1712417331%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1712617338%_)
                                                      (_%__kont2054920550%_)
                                                      (_%__kont2055320554%_
                                                       _%tl1712317328%_
                                                       _%hd1712217325%_))))
                                              (_%__kont2055320554%_
                                               _%tl1712317328%_
                                               _%hd1712217325%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21054_|
                                               _%hd1712217325%_)
                                              (if (gx#stx-pair?
                                                   _%tl1712317328%_)
                                                  (let ((_%e1713017300%_
                                                         (gx#syntax-e
                                                          _%tl1712317328%_)))
                                                    (let ((_%tl1713217307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1713017300%_)))
                                                          (_%hd1713117304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1713017300%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1713217307%_)
                                                          (_%__kont2055120552%_)
                                                          (_%__kont2055320554%_
                                                           _%tl1712317328%_
                                                           _%hd1712217325%_))))
                                                  (_%__kont2055320554%_
                                                   _%tl1712317328%_
                                                   _%hd1712217325%_))
                                              (_%__kont2055320554%_
                                               _%tl1712317328%_
                                               _%hd1712217325%_)))
                                      (_%__kont2055320554%_
                                       _%tl1712317328%_
                                       _%hd1712217325%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1711617253%_))))))))
                 (_%generate16421%_
                  (lambda (_%e16483%_ _%d16485%_)
                    (let* ((_%__stx2062420625%_ _%e16483%_)
                           (_%g1649416552%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2062420625%_))))
                      (let ((_%__kont2062720628%_
                             (lambda (_%L17063%_)
                               (let* ((_%g1707617084%_
                                       (lambda (_%g1707717080%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1707717080%_)))
                                      (_%g1707517103%_
                                       (lambda (_%g1707717088%_)
                                         ((lambda (_%L17091%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%L17091%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1707717088%_))))
                                 (_%g1707517103%_
                                  (_%generate16421%_
                                   _%L17063%_
                                   (fx1+ _%d16485%_))))))
                            (_%__kont2062920630%_
                             (lambda (_%L16992%_)
                               (if (fxzero? _%d16485%_)
                                   _%L16992%_
                                   (let* ((_%g1700517013%_
                                           (lambda (_%g1700617009%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1700617009%_)))
                                          (_%g1700417032%_
                                           (lambda (_%g1700617017%_)
                                             ((lambda (_%L17020%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%L17020%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1700617017%_))))
                                     (_%g1700417032%_
                                      (_%generate16421%_
                                       _%L16992%_
                                       (fx1- _%d16485%_)))))))
                            (_%__kont2063120632%_
                             (lambda (_%L16921%_)
                               (if (fxzero? _%d16485%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%L16921%_ '()))))
                                   (let* ((_%g1693416942%_
                                           (lambda (_%g1693516938%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1693516938%_)))
                                          (_%g1693316961%_
                                           (lambda (_%g1693516946%_)
                                             ((lambda (_%L16949%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%L16949%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1693516946%_))))
                                     (_%g1693316961%_
                                      (_%generate16421%_
                                       _%L16921%_
                                       (fx1- _%d16485%_)))))))
                            (_%__kont2063320634%_
                             (lambda (_%L16846%_ _%L16848%_)
                               (let* ((_%g1686316871%_
                                       (lambda (_%g1686416867%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1686416867%_)))
                                      (_%g1686216890%_
                                       (lambda (_%g1686416875%_)
                                         ((lambda (_%L16878%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%L16878%_
                                                              (cons _%L16848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1686416875%_))))
                                 (_%g1686216890%_
                                  (_%generate16421%_ _%L16846%_ _%d16485%_)))))
                            (_%__kont2063520636%_
                             (lambda (_%L16732%_ _%L16734%_)
                               (let* ((_%g1674516760%_
                                       (lambda (_%g1674616756%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1674616756%_)))
                                      (_%g1674416805%_
                                       (lambda (_%g1674616764%_)
                                         (if (gx#stx-pair? _%g1674616764%_)
                                             (let ((_%e1674916767%_
                                                    (gx#syntax-e
                                                     _%g1674616764%_)))
                                               (let ((_%hd1675016771%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1674916767%_)))
                                                     (_%tl1675116774%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1674916767%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1675116774%_)
                                                     (let ((_%e1675216777%_
                                                            (gx#syntax-e
                                                             _%tl1675116774%_)))
                                                       (let ((_%hd1675316781%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1675216777%_)))
                     (_%tl1675416784%_
                      (let () (declare (not safe)) (##cdr _%e1675216777%_))))
                 (if (gx#stx-null? _%tl1675416784%_)
                     ((lambda (_%L16787%_ _%L16789%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%L16789%_ (cons _%L16787%_ '()))))
                      _%hd1675316781%_
                      _%hd1675016771%_)
                     (_%g1674516760%_ _%g1674616764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1674516760%_
                                                      _%g1674616764%_))))
                                             (_%g1674516760%_
                                              _%g1674616764%_)))))
                                 (_%g1674416805%_
                                  (list (_%generate16421%_
                                         _%L16734%_
                                         _%d16485%_)
                                        (_%generate16421%_
                                         _%L16732%_
                                         _%d16485%_))))))
                            (_%__kont2063720638%_
                             (lambda (_%L16662%_)
                               (let* ((_%g1667616684%_
                                       (lambda (_%g1667716680%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1667716680%_)))
                                      (_%g1667516703%_
                                       (lambda (_%g1667716688%_)
                                         ((lambda (_%L16691%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%L16691%_ '())))
                                          _%g1667716688%_))))
                                 (_%g1667516703%_
                                  (_%generate16421%_
                                   (foldr (lambda (_%g1670616709%_
                                                   _%g1670716712%_)
                                            (cons _%g1670616709%_
                                                  _%g1670716712%_))
                                          '()
                                          _%L16662%_)
                                   _%d16485%_)))))
                            (_%__kont2064120642%_
                             (lambda (_%L16580%_)
                               (let* ((_%g1659016598%_
                                       (lambda (_%g1659116594%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1659116594%_)))
                                      (_%g1658916617%_
                                       (lambda (_%g1659116602%_)
                                         ((lambda (_%L16605%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%L16605%_ '())))
                                          _%g1659116602%_))))
                                 (_%g1658916617%_
                                  (_%generate16421%_ _%L16580%_ _%d16485%_)))))
                            (_%__kont2064320644%_
                             (lambda (_%L16559%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L16559%_ '())))))
                        (let* ((_%g1649216621%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2062420625%_)
                                      (let ((_%e1654516576%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2062420625%_))))
                                        (_%__kont2064120642%_ _%e1654516576%_))
                                      (_%__kont2064320644%_
                                       _%__stx2062420625%_))))
                               (_%__match2074320744%_
                                (lambda (_%e1653416628%_
                                         _%__splice2063920640%_
                                         _%target1653516632%_
                                         _%tl1653716635%_)
                                  (letrec ((_%loop1653816638%_
                                            (lambda (_%hd1653616642%_
                                                     _%e1654216645%_)
                                              (if (gx#stx-pair?
                                                   _%hd1653616642%_)
                                                  (let ((_%e1653916648%_
                                                         (gx#syntax-e
                                                          _%hd1653616642%_)))
                                                    (let ((_%lp-tl1654116655%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1653916648%_)))
                                                          (_%lp-hd1654016652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1653916648%_))))
                                                      (_%loop1653816638%_
                                                       _%lp-tl1654116655%_
                                                       (cons _%lp-hd1654016652%_
                                                             _%e1654216645%_))))
                                                  (let ((_%e1654316658%_
                                                         (reverse _%e1654216645%_)))
                                                    (_%__kont2063720638%_
                                                     _%e1654316658%_))))))
                                    (_%loop1653816638%_
                                     _%target1653516632%_
                                     '()))))
                               (_%g1649116715%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2062420625%_)
                                      (let ((_%e1653416628%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2062420625%_))))
                                        (if (gx#stx-pair/null? _%e1653416628%_)
                                            (let ((_%__splice2063920640%_
                                                   (gx#syntax-split-splice
                                                    _%e1653416628%_
                                                    '0)))
                                              (let ((_%tl1653716635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2063920640%_
                                                        '1)))
                                                    (_%target1653516632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2063920640%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1653716635%_)
                                                    (_%__match2074320744%_
                                                     _%e1653416628%_
                                                     _%__splice2063920640%_
                                                     _%target1653516632%_
                                                     _%tl1653716635%_)
                                                    (_%__kont2064320644%_
                                                     _%__stx2062420625%_))))
                                            (_%__kont2064320644%_
                                             _%__stx2062420625%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1649216621%_))))))
                          (if (gx#stx-pair? _%__stx2062420625%_)
                              (let ((_%e1649717043%_
                                     (gx#syntax-e _%__stx2062420625%_)))
                                (let ((_%tl1649917050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1649717043%_)))
                                      (_%hd1649817047%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1649717043%_))))
                                  (if (gx#identifier? _%hd1649817047%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21055_|
                                           _%hd1649817047%_)
                                          (if (gx#stx-pair? _%tl1649917050%_)
                                              (let ((_%e1650017053%_
                                                     (gx#syntax-e
                                                      _%tl1649917050%_)))
                                                (let ((_%tl1650217060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1650017053%_)))
                                                      (_%hd1650117057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1650017053%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1650217060%_)
                                                      (_%__kont2062720628%_
                                                       _%hd1650117057%_)
                                                      (_%__kont2063520636%_
                                                       _%tl1649917050%_
                                                       _%hd1649817047%_))))
                                              (_%__kont2063520636%_
                                               _%tl1649917050%_
                                               _%hd1649817047%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21056_|
                                               _%hd1649817047%_)
                                              (if (gx#stx-pair?
                                                   _%tl1649917050%_)
                                                  (let ((_%e1650716982%_
                                                         (gx#syntax-e
                                                          _%tl1649917050%_)))
                                                    (let ((_%tl1650916989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1650716982%_)))
                                                          (_%hd1650816986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1650716982%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1650916989%_)
                                                          (_%__kont2062920630%_
                                                           _%hd1650816986%_)
                                                          (_%__kont2063520636%_
                                                           _%tl1649917050%_
                                                           _%hd1649817047%_))))
                                                  (_%__kont2063520636%_
                                                   _%tl1649917050%_
                                                   _%hd1649817047%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21057_|
                                                   _%hd1649817047%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1649917050%_)
                                                      (let ((_%e1651416911%_
                                                             (gx#syntax-e
                                                              _%tl1649917050%_)))
                                                        (let ((_%tl1651616918%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1651416911%_)))
                      (_%hd1651516915%_
                       (let () (declare (not safe)) (##car _%e1651416911%_))))
                  (if (gx#stx-null? _%tl1651616918%_)
                      (_%__kont2063120632%_ _%hd1651516915%_)
                      (_%__kont2063520636%_
                       _%tl1649917050%_
                       _%hd1649817047%_))))
              (_%__kont2063520636%_ _%tl1649917050%_ _%hd1649817047%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2063520636%_
                                                   _%tl1649917050%_
                                                   _%hd1649817047%_))))
                                      (if (gx#stx-pair? _%hd1649817047%_)
                                          (let ((_%e1652216826%_
                                                 (gx#syntax-e
                                                  _%hd1649817047%_)))
                                            (let ((_%tl1652416833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1652216826%_)))
                                                  (_%hd1652316830%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1652216826%_))))
                                              (if (gx#identifier?
                                                   _%hd1652316830%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21058_|
                                                       _%hd1652316830%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1652416833%_)
                                                          (let ((_%e1652516836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1652416833%_)))
                    (let ((_%tl1652716843%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1652516836%_)))
                          (_%hd1652616840%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1652516836%_))))
                      (if (gx#stx-null? _%tl1652716843%_)
                          (if (fxzero? _%d16485%_)
                              (let ((_%L16846%_ _%tl1649917050%_)
                                    (_%L16848%_ _%hd1652616840%_))
                                (_%__kont2063320634%_ _%L16846%_ _%L16848%_))
                              (_%__kont2063520636%_
                               _%tl1649917050%_
                               _%hd1649817047%_))
                          (_%__kont2063520636%_
                           _%tl1649917050%_
                           _%hd1649817047%_))))
                  (_%__kont2063520636%_ _%tl1649917050%_ _%hd1649817047%_))
              (_%__kont2063520636%_ _%tl1649917050%_ _%hd1649817047%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2063520636%_
                                                   _%tl1649917050%_
                                                   _%hd1649817047%_))))
                                          (_%__kont2063520636%_
                                           _%tl1649917050%_
                                           _%hd1649817047%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1649116715%_)))))))))
          (let* ((_%g1642316437%_
                  (lambda (_%g1642416433%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1642416433%_)))
                 (_%g1642216479%_
                  (lambda (_%g1642416441%_)
                    (if (gx#stx-pair? _%g1642416441%_)
                        (let ((_%e1642616444%_ (gx#syntax-e _%g1642416441%_)))
                          (let ((_%hd1642716448%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1642616444%_)))
                                (_%tl1642816451%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1642616444%_))))
                            (if (gx#stx-pair? _%tl1642816451%_)
                                (let ((_%e1642916454%_
                                       (gx#syntax-e _%tl1642816451%_)))
                                  (let ((_%hd1643016458%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1642916454%_)))
                                        (_%tl1643116461%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1642916454%_))))
                                    (if (gx#stx-null? _%tl1643116461%_)
                                        ((lambda (_%L16464%_)
                                           (if (_%simple-quote?16419%_
                                                _%L16464%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L16464%_ '()))
                                               (_%generate16421%_
                                                _%L16464%_
                                                '0)))
                                         _%hd1643016458%_)
                                        (_%g1642316437%_ _%g1642416441%_))))
                                (_%g1642316437%_ _%g1642416441%_))))
                        (_%g1642316437%_ _%g1642416441%_)))))
            (_%g1642216479%_ _%stx16416%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx17351%_)
        (let* ((_%__stx2075020751%_ _%$stx17351%_)
               (_%g1735617377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2075020751%_))))
          (let ((_%__kont2075320754%_
                 (lambda (_%L17445%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17445%_ '()))))
                (_%__kont2075520756%_
                 (lambda (_%L17404%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L17404%_ '())))
                               '())))))
            (let ((_%__match2077120772%_
                   (lambda (_%e1735917425%_
                            _%hd1736017429%_
                            _%tl1736117432%_
                            _%e1736217435%_
                            _%hd1736317439%_
                            _%tl1736417442%_)
                     (let ((_%L17445%_ _%hd1736317439%_))
                       (if (gx#stx-datum? _%L17445%_)
                           (_%__kont2075320754%_ _%L17445%_)
                           (_%__kont2075520756%_ _%hd1736317439%_))))))
              (if (gx#stx-pair? _%__stx2075020751%_)
                  (let ((_%e1735917425%_ (gx#syntax-e _%__stx2075020751%_)))
                    (let ((_%tl1736117432%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1735917425%_)))
                          (_%hd1736017429%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1735917425%_))))
                      (if (gx#stx-pair? _%tl1736117432%_)
                          (let ((_%e1736217435%_
                                 (gx#syntax-e _%tl1736117432%_)))
                            (let ((_%tl1736417442%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1736217435%_)))
                                  (_%hd1736317439%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1736217435%_))))
                              (if (gx#stx-null? _%tl1736417442%_)
                                  (_%__match2077120772%_
                                   _%e1735917425%_
                                   _%hd1736017429%_
                                   _%tl1736117432%_
                                   _%e1736217435%_
                                   _%hd1736317439%_
                                   _%tl1736417442%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1735617377%_)))))
                          (let () (declare (not safe)) (_%g1735617377%_)))))
                  (let () (declare (not safe)) (_%g1735617377%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17462%_)
        (letrec ((_%generate17465%_
                  (lambda (_%rest17584%_)
                    (let _%lp17587%_ ((_%rest17590%_ _%rest17584%_)
                                      (_%hd17592%_ '())
                                      (_%body17593%_ '()))
                      (let* ((_%__stx2080820809%_ _%rest17590%_)
                             (_%g1759617608%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2080820809%_))))
                        (let ((_%__kont2081120812%_
                               (lambda (_%L17636%_ _%L17638%_)
                                 (let* ((_%__stx2078820789%_ _%L17638%_)
                                        (_%g1765517662%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2078820789%_))))
                                   (let ((_%__kont2079120792%_
                                          (lambda ()
                                            (let ((_%arg17698%_ (gx#genident)))
                                              (_%lp17587%_
                                               _%L17636%_
                                               (cons _%arg17698%_ _%hd17592%_)
                                               (cons _%arg17698%_
                                                     _%body17593%_)))))
                                         (_%__kont2079320794%_
                                          (lambda ()
                                            (if (gx#stx-null? _%L17636%_)
                                                (let ((_%tail17684%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17684%_
                         _%hd17592%_)
                  (foldl cons (list _%tail17684%_) _%body17593%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17462%_
                                                 _%L17638%_))))
                                         (_%__kont2079520796%_
                                          (lambda ()
                                            (_%lp17587%_
                                             _%L17636%_
                                             _%hd17592%_
                                             (cons _%L17638%_
                                                   _%body17593%_)))))
                                     (if (gx#identifier? _%__stx2078820789%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21059_|
                                              _%__stx2078820789%_)
                                             (_%__kont2079120792%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21060_|
                                                  _%__stx2078820789%_)
                                                 (_%__kont2079320794%_)
                                                 (_%__kont2079520796%_)))
                                         (_%__kont2079520796%_))))))
                              (_%__kont2081320814%_
                               (lambda ()
                                 (values (reverse _%hd17592%_)
                                         (reverse _%body17593%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2080820809%_)
                              (let ((_%e1760017626%_
                                     (gx#syntax-e _%__stx2080820809%_)))
                                (let ((_%tl1760217633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1760017626%_)))
                                      (_%hd1760117630%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1760017626%_))))
                                  (_%__kont2081120812%_
                                   _%tl1760217633%_
                                   _%hd1760117630%_)))
                              (_%__kont2081320814%_))))))))
          (let* ((_%g1746817479%_
                  (lambda (_%g1746917475%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1746917475%_)))
                 (_%g1746717580%_
                  (lambda (_%g1746917483%_)
                    (if (gx#stx-pair? _%g1746917483%_)
                        (let ((_%e1747117486%_ (gx#syntax-e _%g1746917483%_)))
                          (let ((_%hd1747217490%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1747117486%_)))
                                (_%tl1747317493%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1747117486%_))))
                            ((lambda (_%L17496%_)
                               (if (and (gx#stx-list? _%L17496%_)
                                        (not (gx#stx-null? _%L17496%_)))
                                   (let ((_g21061_
                                          (_%generate17465%_ _%L17496%_)))
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
                                       (let ((_%hd17509%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21061_ 0)))
                                             (_%body17511%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21061_ 1)))
                                             (_%tail?17512%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21061_ 2))))
                                         (let* ((_%g1751417522%_
                                                 (lambda (_%g1751517518%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1751517518%_)))
                                                (_%g1751317576%_
                                                 (lambda (_%g1751517526%_)
                                                   ((lambda (_%L17529%_)
                                                      (let* ((_%g1754217550%_
                                                              (lambda (_%g1754317546%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1754317546%_)))
                     (_%g1754117572%_
                      (lambda (_%g1754317554%_)
                        ((lambda (_%L17557%_)
                           (if _%tail?17512%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17529%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%L17557%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17529%_ (cons _%L17557%_ '())))))
                         _%g1754317554%_))))
                (_%g1754117572%_ _%body17511%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1751517526%_))))
                                           (_%g1751317576%_ _%hd17509%_)))))
                                   (_%g1746817479%_ _%g1746917483%_)))
                             _%tl1747317493%_)))
                        (_%g1746817479%_ _%g1746917483%_)))))
            (_%g1746717580%_ _%stx17462%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17710%_)
        (let ((_%g1771317720%_
               (lambda (_%g1771417716%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1771417716%_))))
          (_%g1771317720%_ _%$stx17710%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17724%_)
        (let ((_%g1772717734%_
               (lambda (_%g1772817730%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1772817730%_))))
          (_%g1772717734%_ _%$stx17724%_))))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g120728_|
    (gx#core-deserialize-mark
     '(0
       (arg119985 . _%arg119985120043%_)
       (arg119986 . _%arg119986120057%_)
       (id . _%id120010%_)
       (arg . _%arg120073%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120729_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120728_|)))
  (define |[1]#_g120731_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120732_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120731_|)))
  (define |[1]#_g120733_|
    (gx#core-deserialize-mark
     '(0
       (arg120120 . _%arg120120120177%_)
       (id . _%id120144%_)
       (arg120121 . _%arg120121120191%_)
       (arg . _%arg120207%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120734_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120733_|)))
  (define |[1]#_g120736_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120737_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120736_|)))
  (define |[1]#_g120738_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id120278%_)
       (arg120254 . _%arg120254120311%_)
       (arg . _%arg120341%_)
       (arg120255 . _%arg120255120325%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120739_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120738_|)))
  (define |[1]#_g120741_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120742_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120741_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx119967%_)
        (let* ((_%__stx120637120638%_ _%$stx119967%_)
               (_%g119972119993%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120637120638%_))))
          (let ((_%__kont120640120641%_
                 (lambda (_%g119974120059%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120729_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp120730
                                                  (lambda (_%g120074120077%_
                                                           _%g120075120080%_)
                                                    (cons _%g120074120077%_
                                                          _%g120075120080%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120730
                                              '()
                                              _%g119974120059%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120732_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120644120645%_
                 (lambda (_%g119987120000%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g119971120012%_
                    (lambda ()
                      (let ((_%g119987120000%_ _%__stx120637120638%_))
                        (if (gx#identifier? _%g119987120000%_)
                            (_%__kont120644120645%_ _%g119987120000%_)
                            (let ()
                              (declare (not safe))
                              (_%g119972119993%_))))))
                   (_%__match120660120661%_
                    (lambda (_%e119975120019%_
                             _%hd119976120023%_
                             _%tl119977120026%_
                             _%__splice120642120643%_
                             _%target119978120029%_
                             _%tl119980120032%_)
                      (letrec ((_%loop119981120035%_
                                (lambda (_%hd119979120039%_
                                         _%arg119985120042%_)
                                  (if (gx#stx-pair? _%hd119979120039%_)
                                      (let ((_%e119982120045%_
                                             (gx#syntax-e _%hd119979120039%_)))
                                        (let ((_%lp-tl119984120052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119982120045%_)))
                                              (_%lp-hd119983120049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119982120045%_))))
                                          (_%loop119981120035%_
                                           _%lp-tl119984120052%_
                                           (cons _%lp-hd119983120049%_
                                                 _%arg119985120042%_))))
                                      (let ((_%arg119986120055%_
                                             (reverse _%arg119985120042%_)))
                                        (_%__kont120640120641%_
                                         _%arg119986120055%_))))))
                        (_%loop119981120035%_ _%target119978120029%_ '())))))
              (if (gx#stx-pair? _%__stx120637120638%_)
                  (let ((_%e119975120019%_
                         (gx#syntax-e _%__stx120637120638%_)))
                    (let ((_%tl119977120026%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119975120019%_)))
                          (_%hd119976120023%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119975120019%_))))
                      (if (gx#stx-pair/null? _%tl119977120026%_)
                          (let ((_%__splice120642120643%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119977120026%_
                                  '0)))
                            (let ((_%tl119980120032%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120642120643%_
                                      '1)))
                                  (_%target119978120029%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120642120643%_
                                      '0))))
                              (if (gx#stx-null? _%tl119980120032%_)
                                  (_%__match120660120661%_
                                   _%e119975120019%_
                                   _%hd119976120023%_
                                   _%tl119977120026%_
                                   _%__splice120642120643%_
                                   _%target119978120029%_
                                   _%tl119980120032%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119971120012%_)))))
                          (let () (declare (not safe)) (_%g119971120012%_)))))
                  (let () (declare (not safe)) (_%g119971120012%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx120102%_)
        (let* ((_%__stx120663120664%_ _%$stx120102%_)
               (_%g120107120128%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120663120664%_))))
          (let ((_%__kont120666120667%_
                 (lambda (_%g120109120193%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120734_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp120735
                                                  (lambda (_%g120208120211%_
                                                           _%g120209120214%_)
                                                    (cons _%g120208120211%_
                                                          _%g120209120214%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120735
                                              '()
                                              _%g120109120193%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120737_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-atomic-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120670120671%_
                 (lambda (_%g120122120135%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g120106120146%_
                    (lambda ()
                      (let ((_%g120122120135%_ _%__stx120663120664%_))
                        (if (gx#identifier? _%g120122120135%_)
                            (_%__kont120670120671%_ _%g120122120135%_)
                            (let ()
                              (declare (not safe))
                              (_%g120107120128%_))))))
                   (_%__match120686120687%_
                    (lambda (_%e120110120153%_
                             _%hd120111120157%_
                             _%tl120112120160%_
                             _%__splice120668120669%_
                             _%target120113120163%_
                             _%tl120115120166%_)
                      (letrec ((_%loop120116120169%_
                                (lambda (_%hd120114120173%_
                                         _%arg120120120176%_)
                                  (if (gx#stx-pair? _%hd120114120173%_)
                                      (let ((_%e120117120179%_
                                             (gx#syntax-e _%hd120114120173%_)))
                                        (let ((_%lp-tl120119120186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120117120179%_)))
                                              (_%lp-hd120118120183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120117120179%_))))
                                          (_%loop120116120169%_
                                           _%lp-tl120119120186%_
                                           (cons _%lp-hd120118120183%_
                                                 _%arg120120120176%_))))
                                      (let ((_%arg120121120189%_
                                             (reverse _%arg120120120176%_)))
                                        (_%__kont120666120667%_
                                         _%arg120121120189%_))))))
                        (_%loop120116120169%_ _%target120113120163%_ '())))))
              (if (gx#stx-pair? _%__stx120663120664%_)
                  (let ((_%e120110120153%_
                         (gx#syntax-e _%__stx120663120664%_)))
                    (let ((_%tl120112120160%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120110120153%_)))
                          (_%hd120111120157%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120110120153%_))))
                      (if (gx#stx-pair/null? _%tl120112120160%_)
                          (let ((_%__splice120668120669%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120112120160%_
                                  '0)))
                            (let ((_%tl120115120166%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120668120669%_
                                      '1)))
                                  (_%target120113120163%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120668120669%_
                                      '0))))
                              (if (gx#stx-null? _%tl120115120166%_)
                                  (_%__match120686120687%_
                                   _%e120110120153%_
                                   _%hd120111120157%_
                                   _%tl120112120160%_
                                   _%__splice120668120669%_
                                   _%target120113120163%_
                                   _%tl120115120166%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120106120146%_)))))
                          (let () (declare (not safe)) (_%g120106120146%_)))))
                  (let () (declare (not safe)) (_%g120106120146%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx120236%_)
        (let* ((_%__stx120689120690%_ _%$stx120236%_)
               (_%g120241120262%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120689120690%_))))
          (let ((_%__kont120692120693%_
                 (lambda (_%g120243120327%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120739_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp120740
                                                  (lambda (_%g120342120345%_
                                                           _%g120343120348%_)
                                                    (cons _%g120342120345%_
                                                          _%g120343120348%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120740
                                              '()
                                              _%g120243120327%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120742_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'K)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               (cons (cons (gx#datum->syntax '#f 'fini)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':procedure)
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__with-unwind-protect)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'K)
                           (cons (gx#datum->syntax '#f 'fini) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120696120697%_
                 (lambda (_%g120256120269%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g120240120280%_
                    (lambda ()
                      (let ((_%g120256120269%_ _%__stx120689120690%_))
                        (if (gx#identifier? _%g120256120269%_)
                            (_%__kont120696120697%_ _%g120256120269%_)
                            (let ()
                              (declare (not safe))
                              (_%g120241120262%_))))))
                   (_%__match120712120713%_
                    (lambda (_%e120244120287%_
                             _%hd120245120291%_
                             _%tl120246120294%_
                             _%__splice120694120695%_
                             _%target120247120297%_
                             _%tl120249120300%_)
                      (letrec ((_%loop120250120303%_
                                (lambda (_%hd120248120307%_
                                         _%arg120254120310%_)
                                  (if (gx#stx-pair? _%hd120248120307%_)
                                      (let ((_%e120251120313%_
                                             (gx#syntax-e _%hd120248120307%_)))
                                        (let ((_%lp-tl120253120320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120251120313%_)))
                                              (_%lp-hd120252120317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120251120313%_))))
                                          (_%loop120250120303%_
                                           _%lp-tl120253120320%_
                                           (cons _%lp-hd120252120317%_
                                                 _%arg120254120310%_))))
                                      (let ((_%arg120255120323%_
                                             (reverse _%arg120254120310%_)))
                                        (_%__kont120692120693%_
                                         _%arg120255120323%_))))))
                        (_%loop120250120303%_ _%target120247120297%_ '())))))
              (if (gx#stx-pair? _%__stx120689120690%_)
                  (let ((_%e120244120287%_
                         (gx#syntax-e _%__stx120689120690%_)))
                    (let ((_%tl120246120294%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120244120287%_)))
                          (_%hd120245120291%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120244120287%_))))
                      (if (gx#stx-pair/null? _%tl120246120294%_)
                          (let ((_%__splice120694120695%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120246120294%_
                                  '0)))
                            (let ((_%tl120249120300%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120694120695%_
                                      '1)))
                                  (_%target120247120297%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120694120695%_
                                      '0))))
                              (if (gx#stx-null? _%tl120249120300%_)
                                  (_%__match120712120713%_
                                   _%e120244120287%_
                                   _%hd120245120291%_
                                   _%tl120246120294%_
                                   _%__splice120694120695%_
                                   _%target120247120297%_
                                   _%tl120249120300%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120240120280%_)))))
                          (let () (declare (not safe)) (_%g120240120280%_)))))
                  (let () (declare (not safe)) (_%g120240120280%_))))))))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g302470_|
    (gx#core-deserialize-mark
     '(0
       (arg301728 . _%arg301728301799%_)
       (arg . _%arg301815%_)
       (id . _%id301752%_)
       (arg301727 . _%arg301727301785%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g302471_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g302470_|)))
  (define |[1]#_g302473_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g302474_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g302473_|)))
  (define |[1]#_g302475_|
    (gx#core-deserialize-mark
     '(0
       (arg301862 . _%arg301862301919%_)
       (arg . _%arg301949%_)
       (id . _%id301886%_)
       (arg301863 . _%arg301863301933%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g302476_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g302475_|)))
  (define |[1]#_g302478_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g302479_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g302478_|)))
  (define |[1]#_g302480_|
    (gx#core-deserialize-mark
     '(0
       (arg301996 . _%arg301996302053%_)
       (arg . _%arg302083%_)
       (id . _%id302020%_)
       (arg301997 . _%arg301997302067%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g302481_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g302480_|)))
  (define |[1]#_g302483_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g302484_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g302483_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx301709%_)
        (let* ((_%__stx302379302380%_ _%$stx301709%_)
               (_%g301714301735%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx302379302380%_))))
          (let ((_%__kont302382302383%_
                 (lambda (_%g301716301801%_)
                   (cons (gx#datum->syntax
                          |[1]#_g302471_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp302472
                                                  (lambda (_%g301816301819%_
                                                           _%g301817301822%_)
                                                    (cons _%g301816301819%_
                                                          _%g301817301822%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp302472
                                              '()
                                              _%g301716301801%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g302474_|
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
                (_%__kont302386302387%_
                 (lambda (_%g301729301742%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g301713301754%_
                    (lambda ()
                      (let ((_%g301729301742%_ _%__stx302379302380%_))
                        (if (gx#identifier? _%g301729301742%_)
                            (_%__kont302386302387%_ _%g301729301742%_)
                            (let ()
                              (declare (not safe))
                              (_%g301714301735%_))))))
                   (_%__match302402302403%_
                    (lambda (_%e301717301761%_
                             _%hd301718301765%_
                             _%tl301719301768%_
                             _%__splice302384302385%_
                             _%target301720301771%_
                             _%tl301722301774%_)
                      (letrec ((_%loop301723301777%_
                                (lambda (_%hd301721301781%_
                                         _%arg301727301784%_)
                                  (if (gx#stx-pair? _%hd301721301781%_)
                                      (let ((_%e301724301787%_
                                             (gx#syntax-e _%hd301721301781%_)))
                                        (let ((_%lp-tl301726301794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e301724301787%_)))
                                              (_%lp-hd301725301791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e301724301787%_))))
                                          (_%loop301723301777%_
                                           _%lp-tl301726301794%_
                                           (cons _%lp-hd301725301791%_
                                                 _%arg301727301784%_))))
                                      (let ((_%arg301728301797%_
                                             (reverse _%arg301727301784%_)))
                                        (_%__kont302382302383%_
                                         _%arg301728301797%_))))))
                        (_%loop301723301777%_ _%target301720301771%_ '())))))
              (if (gx#stx-pair? _%__stx302379302380%_)
                  (let ((_%e301717301761%_
                         (gx#syntax-e _%__stx302379302380%_)))
                    (let ((_%tl301719301768%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e301717301761%_)))
                          (_%hd301718301765%_
                           (let ()
                             (declare (not safe))
                             (##car _%e301717301761%_))))
                      (if (gx#stx-pair/null? _%tl301719301768%_)
                          (let ((_%__splice302384302385%_
                                 (gx#syntax-split-splice->vector
                                  _%tl301719301768%_
                                  '0)))
                            (let ((_%tl301722301774%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice302384302385%_
                                      '1)))
                                  (_%target301720301771%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice302384302385%_
                                      '0))))
                              (if (gx#stx-null? _%tl301722301774%_)
                                  (_%__match302402302403%_
                                   _%e301717301761%_
                                   _%hd301718301765%_
                                   _%tl301719301768%_
                                   _%__splice302384302385%_
                                   _%target301720301771%_
                                   _%tl301722301774%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g301713301754%_)))))
                          (let () (declare (not safe)) (_%g301713301754%_)))))
                  (let () (declare (not safe)) (_%g301713301754%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx301844%_)
        (let* ((_%__stx302405302406%_ _%$stx301844%_)
               (_%g301849301870%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx302405302406%_))))
          (let ((_%__kont302408302409%_
                 (lambda (_%g301851301935%_)
                   (cons (gx#datum->syntax
                          |[1]#_g302476_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp302477
                                                  (lambda (_%g301950301953%_
                                                           _%g301951301956%_)
                                                    (cons _%g301950301953%_
                                                          _%g301951301956%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp302477
                                              '()
                                              _%g301851301935%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g302479_|
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
                (_%__kont302412302413%_
                 (lambda (_%g301864301877%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g301848301888%_
                    (lambda ()
                      (let ((_%g301864301877%_ _%__stx302405302406%_))
                        (if (gx#identifier? _%g301864301877%_)
                            (_%__kont302412302413%_ _%g301864301877%_)
                            (let ()
                              (declare (not safe))
                              (_%g301849301870%_))))))
                   (_%__match302428302429%_
                    (lambda (_%e301852301895%_
                             _%hd301853301899%_
                             _%tl301854301902%_
                             _%__splice302410302411%_
                             _%target301855301905%_
                             _%tl301857301908%_)
                      (letrec ((_%loop301858301911%_
                                (lambda (_%hd301856301915%_
                                         _%arg301862301918%_)
                                  (if (gx#stx-pair? _%hd301856301915%_)
                                      (let ((_%e301859301921%_
                                             (gx#syntax-e _%hd301856301915%_)))
                                        (let ((_%lp-tl301861301928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e301859301921%_)))
                                              (_%lp-hd301860301925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e301859301921%_))))
                                          (_%loop301858301911%_
                                           _%lp-tl301861301928%_
                                           (cons _%lp-hd301860301925%_
                                                 _%arg301862301918%_))))
                                      (let ((_%arg301863301931%_
                                             (reverse _%arg301862301918%_)))
                                        (_%__kont302408302409%_
                                         _%arg301863301931%_))))))
                        (_%loop301858301911%_ _%target301855301905%_ '())))))
              (if (gx#stx-pair? _%__stx302405302406%_)
                  (let ((_%e301852301895%_
                         (gx#syntax-e _%__stx302405302406%_)))
                    (let ((_%tl301854301902%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e301852301895%_)))
                          (_%hd301853301899%_
                           (let ()
                             (declare (not safe))
                             (##car _%e301852301895%_))))
                      (if (gx#stx-pair/null? _%tl301854301902%_)
                          (let ((_%__splice302410302411%_
                                 (gx#syntax-split-splice->vector
                                  _%tl301854301902%_
                                  '0)))
                            (let ((_%tl301857301908%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice302410302411%_
                                      '1)))
                                  (_%target301855301905%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice302410302411%_
                                      '0))))
                              (if (gx#stx-null? _%tl301857301908%_)
                                  (_%__match302428302429%_
                                   _%e301852301895%_
                                   _%hd301853301899%_
                                   _%tl301854301902%_
                                   _%__splice302410302411%_
                                   _%target301855301905%_
                                   _%tl301857301908%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g301848301888%_)))))
                          (let () (declare (not safe)) (_%g301848301888%_)))))
                  (let () (declare (not safe)) (_%g301848301888%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx301978%_)
        (let* ((_%__stx302431302432%_ _%$stx301978%_)
               (_%g301983302004%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx302431302432%_))))
          (let ((_%__kont302434302435%_
                 (lambda (_%g301985302069%_)
                   (cons (gx#datum->syntax
                          |[1]#_g302481_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp302482
                                                  (lambda (_%g302084302087%_
                                                           _%g302085302090%_)
                                                    (cons _%g302084302087%_
                                                          _%g302085302090%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp302482
                                              '()
                                              _%g301985302069%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g302484_|
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
                (_%__kont302438302439%_
                 (lambda (_%g301998302011%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g301982302022%_
                    (lambda ()
                      (let ((_%g301998302011%_ _%__stx302431302432%_))
                        (if (gx#identifier? _%g301998302011%_)
                            (_%__kont302438302439%_ _%g301998302011%_)
                            (let ()
                              (declare (not safe))
                              (_%g301983302004%_))))))
                   (_%__match302454302455%_
                    (lambda (_%e301986302029%_
                             _%hd301987302033%_
                             _%tl301988302036%_
                             _%__splice302436302437%_
                             _%target301989302039%_
                             _%tl301991302042%_)
                      (letrec ((_%loop301992302045%_
                                (lambda (_%hd301990302049%_
                                         _%arg301996302052%_)
                                  (if (gx#stx-pair? _%hd301990302049%_)
                                      (let ((_%e301993302055%_
                                             (gx#syntax-e _%hd301990302049%_)))
                                        (let ((_%lp-tl301995302062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e301993302055%_)))
                                              (_%lp-hd301994302059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e301993302055%_))))
                                          (_%loop301992302045%_
                                           _%lp-tl301995302062%_
                                           (cons _%lp-hd301994302059%_
                                                 _%arg301996302052%_))))
                                      (let ((_%arg301997302065%_
                                             (reverse _%arg301996302052%_)))
                                        (_%__kont302434302435%_
                                         _%arg301997302065%_))))))
                        (_%loop301992302045%_ _%target301989302039%_ '())))))
              (if (gx#stx-pair? _%__stx302431302432%_)
                  (let ((_%e301986302029%_
                         (gx#syntax-e _%__stx302431302432%_)))
                    (let ((_%tl301988302036%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e301986302029%_)))
                          (_%hd301987302033%_
                           (let ()
                             (declare (not safe))
                             (##car _%e301986302029%_))))
                      (if (gx#stx-pair/null? _%tl301988302036%_)
                          (let ((_%__splice302436302437%_
                                 (gx#syntax-split-splice->vector
                                  _%tl301988302036%_
                                  '0)))
                            (let ((_%tl301991302042%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice302436302437%_
                                      '1)))
                                  (_%target301989302039%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice302436302437%_
                                      '0))))
                              (if (gx#stx-null? _%tl301991302042%_)
                                  (_%__match302454302455%_
                                   _%e301986302029%_
                                   _%hd301987302033%_
                                   _%tl301988302036%_
                                   _%__splice302436302437%_
                                   _%target301989302039%_
                                   _%tl301991302042%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g301982302022%_)))))
                          (let () (declare (not safe)) (_%g301982302022%_)))))
                  (let () (declare (not safe)) (_%g301982302022%_))))))))))

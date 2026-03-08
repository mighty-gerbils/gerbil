(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g120271_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id119553%_)
       (arg . _%arg119616%_)
       (arg119528 . _%arg119528119586%_)
       (arg119529 . _%arg119529119600%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120272_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120271_|)))
  (define |[1]#_g120274_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120275_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120274_|)))
  (define |[1]#_g120276_|
    (gx#core-deserialize-mark
     '(0
       (arg119663 . _%arg119663119720%_)
       (arg119664 . _%arg119664119734%_)
       (id . _%id119687%_)
       (arg . _%arg119750%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120277_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120276_|)))
  (define |[1]#_g120279_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120280_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120279_|)))
  (define |[1]#_g120281_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id119821%_)
       (arg119798 . _%arg119798119868%_)
       (arg . _%arg119884%_)
       (arg119797 . _%arg119797119854%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120282_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120281_|)))
  (define |[1]#_g120284_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120285_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120284_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx119510%_)
        (let* ((_%__stx120180120181%_ _%$stx119510%_)
               (_%g119515119536%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120180120181%_))))
          (let ((_%__kont120183120184%_
                 (lambda (_%g119517119602%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120272_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp120273
                                                  (lambda (_%g119617119620%_
                                                           _%g119618119623%_)
                                                    (cons _%g119617119620%_
                                                          _%g119618119623%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120273
                                              '()
                                              _%g119517119602%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120275_|
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
                (_%__kont120187120188%_
                 (lambda (_%g119530119543%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g119514119555%_
                    (lambda ()
                      (let ((_%g119530119543%_ _%__stx120180120181%_))
                        (if (gx#identifier? _%g119530119543%_)
                            (_%__kont120187120188%_ _%g119530119543%_)
                            (let ()
                              (declare (not safe))
                              (_%g119515119536%_))))))
                   (_%__match120203120204%_
                    (lambda (_%e119518119562%_
                             _%hd119519119566%_
                             _%tl119520119569%_
                             _%__splice120185120186%_
                             _%target119521119572%_
                             _%tl119523119575%_)
                      (letrec ((_%loop119524119578%_
                                (lambda (_%hd119522119582%_
                                         _%arg119528119585%_)
                                  (if (gx#stx-pair? _%hd119522119582%_)
                                      (let ((_%e119525119588%_
                                             (gx#syntax-e _%hd119522119582%_)))
                                        (let ((_%lp-tl119527119595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119525119588%_)))
                                              (_%lp-hd119526119592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119525119588%_))))
                                          (_%loop119524119578%_
                                           _%lp-tl119527119595%_
                                           (cons _%lp-hd119526119592%_
                                                 _%arg119528119585%_))))
                                      (let ((_%arg119529119598%_
                                             (reverse _%arg119528119585%_)))
                                        (_%__kont120183120184%_
                                         _%arg119529119598%_))))))
                        (_%loop119524119578%_ _%target119521119572%_ '())))))
              (if (gx#stx-pair? _%__stx120180120181%_)
                  (let ((_%e119518119562%_
                         (gx#syntax-e _%__stx120180120181%_)))
                    (let ((_%tl119520119569%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119518119562%_)))
                          (_%hd119519119566%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119518119562%_))))
                      (if (gx#stx-pair/null? _%tl119520119569%_)
                          (let ((_%__splice120185120186%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119520119569%_
                                  '0)))
                            (let ((_%tl119523119575%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120185120186%_
                                      '1)))
                                  (_%target119521119572%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120185120186%_
                                      '0))))
                              (if (gx#stx-null? _%tl119523119575%_)
                                  (_%__match120203120204%_
                                   _%e119518119562%_
                                   _%hd119519119566%_
                                   _%tl119520119569%_
                                   _%__splice120185120186%_
                                   _%target119521119572%_
                                   _%tl119523119575%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119514119555%_)))))
                          (let () (declare (not safe)) (_%g119514119555%_)))))
                  (let () (declare (not safe)) (_%g119514119555%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx119645%_)
        (let* ((_%__stx120206120207%_ _%$stx119645%_)
               (_%g119650119671%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120206120207%_))))
          (let ((_%__kont120209120210%_
                 (lambda (_%g119652119736%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120277_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp120278
                                                  (lambda (_%g119751119754%_
                                                           _%g119752119757%_)
                                                    (cons _%g119751119754%_
                                                          _%g119752119757%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120278
                                              '()
                                              _%g119652119736%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120280_|
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
                (_%__kont120213120214%_
                 (lambda (_%g119665119678%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g119649119689%_
                    (lambda ()
                      (let ((_%g119665119678%_ _%__stx120206120207%_))
                        (if (gx#identifier? _%g119665119678%_)
                            (_%__kont120213120214%_ _%g119665119678%_)
                            (let ()
                              (declare (not safe))
                              (_%g119650119671%_))))))
                   (_%__match120229120230%_
                    (lambda (_%e119653119696%_
                             _%hd119654119700%_
                             _%tl119655119703%_
                             _%__splice120211120212%_
                             _%target119656119706%_
                             _%tl119658119709%_)
                      (letrec ((_%loop119659119712%_
                                (lambda (_%hd119657119716%_
                                         _%arg119663119719%_)
                                  (if (gx#stx-pair? _%hd119657119716%_)
                                      (let ((_%e119660119722%_
                                             (gx#syntax-e _%hd119657119716%_)))
                                        (let ((_%lp-tl119662119729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119660119722%_)))
                                              (_%lp-hd119661119726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119660119722%_))))
                                          (_%loop119659119712%_
                                           _%lp-tl119662119729%_
                                           (cons _%lp-hd119661119726%_
                                                 _%arg119663119719%_))))
                                      (let ((_%arg119664119732%_
                                             (reverse _%arg119663119719%_)))
                                        (_%__kont120209120210%_
                                         _%arg119664119732%_))))))
                        (_%loop119659119712%_ _%target119656119706%_ '())))))
              (if (gx#stx-pair? _%__stx120206120207%_)
                  (let ((_%e119653119696%_
                         (gx#syntax-e _%__stx120206120207%_)))
                    (let ((_%tl119655119703%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119653119696%_)))
                          (_%hd119654119700%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119653119696%_))))
                      (if (gx#stx-pair/null? _%tl119655119703%_)
                          (let ((_%__splice120211120212%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119655119703%_
                                  '0)))
                            (let ((_%tl119658119709%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120211120212%_
                                      '1)))
                                  (_%target119656119706%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120211120212%_
                                      '0))))
                              (if (gx#stx-null? _%tl119658119709%_)
                                  (_%__match120229120230%_
                                   _%e119653119696%_
                                   _%hd119654119700%_
                                   _%tl119655119703%_
                                   _%__splice120211120212%_
                                   _%target119656119706%_
                                   _%tl119658119709%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119649119689%_)))))
                          (let () (declare (not safe)) (_%g119649119689%_)))))
                  (let () (declare (not safe)) (_%g119649119689%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx119779%_)
        (let* ((_%__stx120232120233%_ _%$stx119779%_)
               (_%g119784119805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120232120233%_))))
          (let ((_%__kont120235120236%_
                 (lambda (_%g119786119870%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120282_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp120283
                                                  (lambda (_%g119885119888%_
                                                           _%g119886119891%_)
                                                    (cons _%g119885119888%_
                                                          _%g119886119891%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120283
                                              '()
                                              _%g119786119870%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120285_|
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
                (_%__kont120239120240%_
                 (lambda (_%g119799119812%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g119783119823%_
                    (lambda ()
                      (let ((_%g119799119812%_ _%__stx120232120233%_))
                        (if (gx#identifier? _%g119799119812%_)
                            (_%__kont120239120240%_ _%g119799119812%_)
                            (let ()
                              (declare (not safe))
                              (_%g119784119805%_))))))
                   (_%__match120255120256%_
                    (lambda (_%e119787119830%_
                             _%hd119788119834%_
                             _%tl119789119837%_
                             _%__splice120237120238%_
                             _%target119790119840%_
                             _%tl119792119843%_)
                      (letrec ((_%loop119793119846%_
                                (lambda (_%hd119791119850%_
                                         _%arg119797119853%_)
                                  (if (gx#stx-pair? _%hd119791119850%_)
                                      (let ((_%e119794119856%_
                                             (gx#syntax-e _%hd119791119850%_)))
                                        (let ((_%lp-tl119796119863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119794119856%_)))
                                              (_%lp-hd119795119860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119794119856%_))))
                                          (_%loop119793119846%_
                                           _%lp-tl119796119863%_
                                           (cons _%lp-hd119795119860%_
                                                 _%arg119797119853%_))))
                                      (let ((_%arg119798119866%_
                                             (reverse _%arg119797119853%_)))
                                        (_%__kont120235120236%_
                                         _%arg119798119866%_))))))
                        (_%loop119793119846%_ _%target119790119840%_ '())))))
              (if (gx#stx-pair? _%__stx120232120233%_)
                  (let ((_%e119787119830%_
                         (gx#syntax-e _%__stx120232120233%_)))
                    (let ((_%tl119789119837%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119787119830%_)))
                          (_%hd119788119834%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119787119830%_))))
                      (if (gx#stx-pair/null? _%tl119789119837%_)
                          (let ((_%__splice120237120238%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119789119837%_
                                  '0)))
                            (let ((_%tl119792119843%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120237120238%_
                                      '1)))
                                  (_%target119790119840%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120237120238%_
                                      '0))))
                              (if (gx#stx-null? _%tl119792119843%_)
                                  (_%__match120255120256%_
                                   _%e119787119830%_
                                   _%hd119788119834%_
                                   _%tl119789119837%_
                                   _%__splice120237120238%_
                                   _%target119790119840%_
                                   _%tl119792119843%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119783119823%_)))))
                          (let () (declare (not safe)) (_%g119783119823%_)))))
                  (let () (declare (not safe)) (_%g119783119823%_))))))))))

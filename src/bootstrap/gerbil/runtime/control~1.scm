(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g120281_|
    (gx#core-deserialize-mark
     '(0
       (arg119538 . _%arg119538119596%_)
       (arg119539 . _%arg119539119610%_)
       (arg . _%arg119626%_)
       (id . _%id119563%_))
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
  (define |[1]#_g120286_|
    (gx#core-deserialize-mark
     '(0
       (arg119673 . _%arg119673119730%_)
       (arg119674 . _%arg119674119744%_)
       (arg . _%arg119760%_)
       (id . _%id119697%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120287_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120286_|)))
  (define |[1]#_g120289_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120290_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120289_|)))
  (define |[1]#_g120291_|
    (gx#core-deserialize-mark
     '(0
       (arg119808 . _%arg119808119878%_)
       (arg . _%arg119894%_)
       (id . _%id119831%_)
       (arg119807 . _%arg119807119864%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120292_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120291_|)))
  (define |[1]#_g120294_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120295_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120294_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx119520%_)
        (let* ((_%__stx120190120191%_ _%$stx119520%_)
               (_%g119525119546%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120190120191%_))))
          (let ((_%__kont120193120194%_
                 (lambda (_%g119527119612%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120282_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp120283
                                                  (lambda (_%g119627119630%_
                                                           _%g119628119633%_)
                                                    (cons _%g119627119630%_
                                                          _%g119628119633%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120283
                                              '()
                                              _%g119527119612%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120285_|
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
                (_%__kont120197120198%_
                 (lambda (_%g119540119553%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g119524119565%_
                    (lambda ()
                      (let ((_%g119540119553%_ _%__stx120190120191%_))
                        (if (gx#identifier? _%g119540119553%_)
                            (_%__kont120197120198%_ _%g119540119553%_)
                            (let ()
                              (declare (not safe))
                              (_%g119525119546%_))))))
                   (_%__match120213120214%_
                    (lambda (_%e119528119572%_
                             _%hd119529119576%_
                             _%tl119530119579%_
                             _%__splice120195120196%_
                             _%target119531119582%_
                             _%tl119533119585%_)
                      (letrec ((_%loop119534119588%_
                                (lambda (_%hd119532119592%_
                                         _%arg119538119595%_)
                                  (if (gx#stx-pair? _%hd119532119592%_)
                                      (let ((_%e119535119598%_
                                             (gx#syntax-e _%hd119532119592%_)))
                                        (let ((_%lp-tl119537119605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119535119598%_)))
                                              (_%lp-hd119536119602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119535119598%_))))
                                          (_%loop119534119588%_
                                           _%lp-tl119537119605%_
                                           (cons _%lp-hd119536119602%_
                                                 _%arg119538119595%_))))
                                      (let ((_%arg119539119608%_
                                             (reverse _%arg119538119595%_)))
                                        (_%__kont120193120194%_
                                         _%arg119539119608%_))))))
                        (_%loop119534119588%_ _%target119531119582%_ '())))))
              (if (gx#stx-pair? _%__stx120190120191%_)
                  (let ((_%e119528119572%_
                         (gx#syntax-e _%__stx120190120191%_)))
                    (let ((_%tl119530119579%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119528119572%_)))
                          (_%hd119529119576%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119528119572%_))))
                      (if (gx#stx-pair/null? _%tl119530119579%_)
                          (let ((_%__splice120195120196%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119530119579%_
                                  '0)))
                            (let ((_%tl119533119585%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120195120196%_
                                      '1)))
                                  (_%target119531119582%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120195120196%_
                                      '0))))
                              (if (gx#stx-null? _%tl119533119585%_)
                                  (_%__match120213120214%_
                                   _%e119528119572%_
                                   _%hd119529119576%_
                                   _%tl119530119579%_
                                   _%__splice120195120196%_
                                   _%target119531119582%_
                                   _%tl119533119585%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119524119565%_)))))
                          (let () (declare (not safe)) (_%g119524119565%_)))))
                  (let () (declare (not safe)) (_%g119524119565%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx119655%_)
        (let* ((_%__stx120216120217%_ _%$stx119655%_)
               (_%g119660119681%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120216120217%_))))
          (let ((_%__kont120219120220%_
                 (lambda (_%g119662119746%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120287_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp120288
                                                  (lambda (_%g119761119764%_
                                                           _%g119762119767%_)
                                                    (cons _%g119761119764%_
                                                          _%g119762119767%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120288
                                              '()
                                              _%g119662119746%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120290_|
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
                (_%__kont120223120224%_
                 (lambda (_%g119675119688%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g119659119699%_
                    (lambda ()
                      (let ((_%g119675119688%_ _%__stx120216120217%_))
                        (if (gx#identifier? _%g119675119688%_)
                            (_%__kont120223120224%_ _%g119675119688%_)
                            (let ()
                              (declare (not safe))
                              (_%g119660119681%_))))))
                   (_%__match120239120240%_
                    (lambda (_%e119663119706%_
                             _%hd119664119710%_
                             _%tl119665119713%_
                             _%__splice120221120222%_
                             _%target119666119716%_
                             _%tl119668119719%_)
                      (letrec ((_%loop119669119722%_
                                (lambda (_%hd119667119726%_
                                         _%arg119673119729%_)
                                  (if (gx#stx-pair? _%hd119667119726%_)
                                      (let ((_%e119670119732%_
                                             (gx#syntax-e _%hd119667119726%_)))
                                        (let ((_%lp-tl119672119739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119670119732%_)))
                                              (_%lp-hd119671119736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119670119732%_))))
                                          (_%loop119669119722%_
                                           _%lp-tl119672119739%_
                                           (cons _%lp-hd119671119736%_
                                                 _%arg119673119729%_))))
                                      (let ((_%arg119674119742%_
                                             (reverse _%arg119673119729%_)))
                                        (_%__kont120219120220%_
                                         _%arg119674119742%_))))))
                        (_%loop119669119722%_ _%target119666119716%_ '())))))
              (if (gx#stx-pair? _%__stx120216120217%_)
                  (let ((_%e119663119706%_
                         (gx#syntax-e _%__stx120216120217%_)))
                    (let ((_%tl119665119713%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119663119706%_)))
                          (_%hd119664119710%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119663119706%_))))
                      (if (gx#stx-pair/null? _%tl119665119713%_)
                          (let ((_%__splice120221120222%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119665119713%_
                                  '0)))
                            (let ((_%tl119668119719%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120221120222%_
                                      '1)))
                                  (_%target119666119716%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120221120222%_
                                      '0))))
                              (if (gx#stx-null? _%tl119668119719%_)
                                  (_%__match120239120240%_
                                   _%e119663119706%_
                                   _%hd119664119710%_
                                   _%tl119665119713%_
                                   _%__splice120221120222%_
                                   _%target119666119716%_
                                   _%tl119668119719%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119659119699%_)))))
                          (let () (declare (not safe)) (_%g119659119699%_)))))
                  (let () (declare (not safe)) (_%g119659119699%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx119789%_)
        (let* ((_%__stx120242120243%_ _%$stx119789%_)
               (_%g119794119815%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120242120243%_))))
          (let ((_%__kont120245120246%_
                 (lambda (_%g119796119880%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120292_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp120293
                                                  (lambda (_%g119895119898%_
                                                           _%g119896119901%_)
                                                    (cons _%g119895119898%_
                                                          _%g119896119901%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120293
                                              '()
                                              _%g119796119880%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120295_|
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
                (_%__kont120249120250%_
                 (lambda (_%g119809119822%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g119793119833%_
                    (lambda ()
                      (let ((_%g119809119822%_ _%__stx120242120243%_))
                        (if (gx#identifier? _%g119809119822%_)
                            (_%__kont120249120250%_ _%g119809119822%_)
                            (let ()
                              (declare (not safe))
                              (_%g119794119815%_))))))
                   (_%__match120265120266%_
                    (lambda (_%e119797119840%_
                             _%hd119798119844%_
                             _%tl119799119847%_
                             _%__splice120247120248%_
                             _%target119800119850%_
                             _%tl119802119853%_)
                      (letrec ((_%loop119803119856%_
                                (lambda (_%hd119801119860%_
                                         _%arg119807119863%_)
                                  (if (gx#stx-pair? _%hd119801119860%_)
                                      (let ((_%e119804119866%_
                                             (gx#syntax-e _%hd119801119860%_)))
                                        (let ((_%lp-tl119806119873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119804119866%_)))
                                              (_%lp-hd119805119870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119804119866%_))))
                                          (_%loop119803119856%_
                                           _%lp-tl119806119873%_
                                           (cons _%lp-hd119805119870%_
                                                 _%arg119807119863%_))))
                                      (let ((_%arg119808119876%_
                                             (reverse _%arg119807119863%_)))
                                        (_%__kont120245120246%_
                                         _%arg119808119876%_))))))
                        (_%loop119803119856%_ _%target119800119850%_ '())))))
              (if (gx#stx-pair? _%__stx120242120243%_)
                  (let ((_%e119797119840%_
                         (gx#syntax-e _%__stx120242120243%_)))
                    (let ((_%tl119799119847%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119797119840%_)))
                          (_%hd119798119844%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119797119840%_))))
                      (if (gx#stx-pair/null? _%tl119799119847%_)
                          (let ((_%__splice120247120248%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119799119847%_
                                  '0)))
                            (let ((_%tl119802119853%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120247120248%_
                                      '1)))
                                  (_%target119800119850%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120247120248%_
                                      '0))))
                              (if (gx#stx-null? _%tl119802119853%_)
                                  (_%__match120265120266%_
                                   _%e119797119840%_
                                   _%hd119798119844%_
                                   _%tl119799119847%_
                                   _%__splice120247120248%_
                                   _%target119800119850%_
                                   _%tl119802119853%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119793119833%_)))))
                          (let () (declare (not safe)) (_%g119793119833%_)))))
                  (let () (declare (not safe)) (_%g119793119833%_))))))))))

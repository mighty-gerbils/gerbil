(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g123315_|
    (gx#core-deserialize-mark
     '(0
       ($%arg122573 . _%$%arg122573122644%_)
       (arg . _%arg122660%_)
       (id . _%id122597%_)
       ($%arg122572 . _%$%arg122572122630%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g123316_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g123315_|)))
  (define |[1]#_g123318_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g123319_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g123318_|)))
  (define |[1]#_g123320_|
    (gx#core-deserialize-mark
     '(0
       ($%arg122693 . _%$%arg122693122750%_)
       (arg . _%arg122780%_)
       (id . _%id122717%_)
       ($%arg122694 . _%$%arg122694122764%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g123321_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g123320_|)))
  (define |[1]#_g123323_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g123324_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g123323_|)))
  (define |[1]#_g123325_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg122900%_)
       ($%arg122814 . _%$%arg122814122884%_)
       (id . _%id122837%_)
       ($%arg122813 . _%$%arg122813122870%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g123326_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g123325_|)))
  (define |[1]#_g123328_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g123329_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g123328_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx122554%_)
        (let* ((_%__stx123224123225%_ _%$stx122554%_)
               (_%$%g122559122580%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx123224123225%_))))
          (let ((_%__kont123227123228%_
                 (lambda (_%$%g122561122646%_)
                   (cons (gx#datum->syntax
                          |[1]#_g123316_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp123317
                                                  (lambda (_%$%g122661122664%_
                                                           _%$%g122662122667%_)
                                                    (cons _%$%g122661122664%_
                                                          _%$%g122662122667%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp123317
                                              '()
                                              _%$%g122561122646%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g123319_|
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
                (_%__kont123231123232%_
                 (lambda (_%$%g122574122587%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%$%g122558122599%_
                    (lambda ()
                      (let ((_%$%g122574122587%_ _%__stx123224123225%_))
                        (if (gx#identifier? _%$%g122574122587%_)
                            (_%__kont123231123232%_ _%$%g122574122587%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g122559122580%_))))))
                   (_%__match123247123248%_
                    (lambda (_%$%e122562122606%_
                             _%$%hd122563122610%_
                             _%$%tl122564122613%_
                             _%__splice123229123230%_
                             _%$%target122565122616%_
                             _%$%tl122567122619%_)
                      (letrec ((_%$%loop122568122622%_
                                (lambda (_%$%hd122566122626%_
                                         _%$%arg122572122629%_)
                                  (if (gx#stx-pair? _%$%hd122566122626%_)
                                      (let ((_%$%e122569122632%_
                                             (gx#syntax-e
                                              _%$%hd122566122626%_)))
                                        (let ((_%$%lp-tl122571122639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e122569122632%_)))
                                              (_%$%lp-hd122570122636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e122569122632%_))))
                                          (_%$%loop122568122622%_
                                           _%$%lp-tl122571122639%_
                                           (cons _%$%lp-hd122570122636%_
                                                 _%$%arg122572122629%_))))
                                      (let ((_%$%arg122573122642%_
                                             (reverse _%$%arg122572122629%_)))
                                        (_%__kont123227123228%_
                                         _%$%arg122573122642%_))))))
                        (_%$%loop122568122622%_
                         _%$%target122565122616%_
                         '())))))
              (if (gx#stx-pair? _%__stx123224123225%_)
                  (let ((_%$%e122562122606%_
                         (gx#syntax-e _%__stx123224123225%_)))
                    (let ((_%$%tl122564122613%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e122562122606%_)))
                          (_%$%hd122563122610%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e122562122606%_))))
                      (if (gx#stx-pair/null? _%$%tl122564122613%_)
                          (let ((_%__splice123229123230%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl122564122613%_
                                  '0)))
                            (let ((_%$%tl122567122619%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123229123230%_
                                      '1)))
                                  (_%$%target122565122616%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123229123230%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl122567122619%_)
                                  (_%__match123247123248%_
                                   _%$%e122562122606%_
                                   _%$%hd122563122610%_
                                   _%$%tl122564122613%_
                                   _%__splice123229123230%_
                                   _%$%target122565122616%_
                                   _%$%tl122567122619%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g122558122599%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g122558122599%_)))))
                  (let () (declare (not safe)) (_%$%g122558122599%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx122675%_)
        (let* ((_%__stx123250123251%_ _%$stx122675%_)
               (_%$%g122680122701%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx123250123251%_))))
          (let ((_%__kont123253123254%_
                 (lambda (_%$%g122682122766%_)
                   (cons (gx#datum->syntax
                          |[1]#_g123321_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp123322
                                                  (lambda (_%$%g122781122784%_
                                                           _%$%g122782122787%_)
                                                    (cons _%$%g122781122784%_
                                                          _%$%g122782122787%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp123322
                                              '()
                                              _%$%g122682122766%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g123324_|
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
                (_%__kont123257123258%_
                 (lambda (_%$%g122695122708%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%$%g122679122719%_
                    (lambda ()
                      (let ((_%$%g122695122708%_ _%__stx123250123251%_))
                        (if (gx#identifier? _%$%g122695122708%_)
                            (_%__kont123257123258%_ _%$%g122695122708%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g122680122701%_))))))
                   (_%__match123273123274%_
                    (lambda (_%$%e122683122726%_
                             _%$%hd122684122730%_
                             _%$%tl122685122733%_
                             _%__splice123255123256%_
                             _%$%target122686122736%_
                             _%$%tl122688122739%_)
                      (letrec ((_%$%loop122689122742%_
                                (lambda (_%$%hd122687122746%_
                                         _%$%arg122693122749%_)
                                  (if (gx#stx-pair? _%$%hd122687122746%_)
                                      (let ((_%$%e122690122752%_
                                             (gx#syntax-e
                                              _%$%hd122687122746%_)))
                                        (let ((_%$%lp-tl122692122759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e122690122752%_)))
                                              (_%$%lp-hd122691122756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e122690122752%_))))
                                          (_%$%loop122689122742%_
                                           _%$%lp-tl122692122759%_
                                           (cons _%$%lp-hd122691122756%_
                                                 _%$%arg122693122749%_))))
                                      (let ((_%$%arg122694122762%_
                                             (reverse _%$%arg122693122749%_)))
                                        (_%__kont123253123254%_
                                         _%$%arg122694122762%_))))))
                        (_%$%loop122689122742%_
                         _%$%target122686122736%_
                         '())))))
              (if (gx#stx-pair? _%__stx123250123251%_)
                  (let ((_%$%e122683122726%_
                         (gx#syntax-e _%__stx123250123251%_)))
                    (let ((_%$%tl122685122733%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e122683122726%_)))
                          (_%$%hd122684122730%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e122683122726%_))))
                      (if (gx#stx-pair/null? _%$%tl122685122733%_)
                          (let ((_%__splice123255123256%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl122685122733%_
                                  '0)))
                            (let ((_%$%tl122688122739%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123255123256%_
                                      '1)))
                                  (_%$%target122686122736%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123255123256%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl122688122739%_)
                                  (_%__match123273123274%_
                                   _%$%e122683122726%_
                                   _%$%hd122684122730%_
                                   _%$%tl122685122733%_
                                   _%__splice123255123256%_
                                   _%$%target122686122736%_
                                   _%$%tl122688122739%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g122679122719%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g122679122719%_)))))
                  (let () (declare (not safe)) (_%$%g122679122719%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx122795%_)
        (let* ((_%__stx123276123277%_ _%$stx122795%_)
               (_%$%g122800122821%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx123276123277%_))))
          (let ((_%__kont123279123280%_
                 (lambda (_%$%g122802122886%_)
                   (cons (gx#datum->syntax
                          |[1]#_g123326_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp123327
                                                  (lambda (_%$%g122901122904%_
                                                           _%$%g122902122907%_)
                                                    (cons _%$%g122901122904%_
                                                          _%$%g122902122907%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp123327
                                              '()
                                              _%$%g122802122886%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g123329_|
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
                (_%__kont123283123284%_
                 (lambda (_%$%g122815122828%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%$%g122799122839%_
                    (lambda ()
                      (let ((_%$%g122815122828%_ _%__stx123276123277%_))
                        (if (gx#identifier? _%$%g122815122828%_)
                            (_%__kont123283123284%_ _%$%g122815122828%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g122800122821%_))))))
                   (_%__match123299123300%_
                    (lambda (_%$%e122803122846%_
                             _%$%hd122804122850%_
                             _%$%tl122805122853%_
                             _%__splice123281123282%_
                             _%$%target122806122856%_
                             _%$%tl122808122859%_)
                      (letrec ((_%$%loop122809122862%_
                                (lambda (_%$%hd122807122866%_
                                         _%$%arg122813122869%_)
                                  (if (gx#stx-pair? _%$%hd122807122866%_)
                                      (let ((_%$%e122810122872%_
                                             (gx#syntax-e
                                              _%$%hd122807122866%_)))
                                        (let ((_%$%lp-tl122812122879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e122810122872%_)))
                                              (_%$%lp-hd122811122876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e122810122872%_))))
                                          (_%$%loop122809122862%_
                                           _%$%lp-tl122812122879%_
                                           (cons _%$%lp-hd122811122876%_
                                                 _%$%arg122813122869%_))))
                                      (let ((_%$%arg122814122882%_
                                             (reverse _%$%arg122813122869%_)))
                                        (_%__kont123279123280%_
                                         _%$%arg122814122882%_))))))
                        (_%$%loop122809122862%_
                         _%$%target122806122856%_
                         '())))))
              (if (gx#stx-pair? _%__stx123276123277%_)
                  (let ((_%$%e122803122846%_
                         (gx#syntax-e _%__stx123276123277%_)))
                    (let ((_%$%tl122805122853%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e122803122846%_)))
                          (_%$%hd122804122850%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e122803122846%_))))
                      (if (gx#stx-pair/null? _%$%tl122805122853%_)
                          (let ((_%__splice123281123282%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl122805122853%_
                                  '0)))
                            (let ((_%$%tl122808122859%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123281123282%_
                                      '1)))
                                  (_%$%target122806122856%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123281123282%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl122808122859%_)
                                  (_%__match123299123300%_
                                   _%$%e122803122846%_
                                   _%$%hd122804122850%_
                                   _%$%tl122805122853%_
                                   _%__splice123281123282%_
                                   _%$%target122806122856%_
                                   _%$%tl122808122859%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g122799122839%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g122799122839%_)))))
                  (let () (declare (not safe)) (_%$%g122799122839%_))))))))))

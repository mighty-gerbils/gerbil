(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g119667_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg119012%_)
       (arg118924 . _%arg118924118982%_)
       (id . _%id118949%_)
       (arg118925 . _%arg118925118996%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119668_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119667_|)))
  (define |[1]#_g119670_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119671_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119670_|)))
  (define |[1]#_g119672_|
    (gx#core-deserialize-mark
     '(0
       (arg119059 . _%arg119059119116%_)
       (arg . _%arg119146%_)
       (id . _%id119083%_)
       (arg119060 . _%arg119060119130%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119673_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119672_|)))
  (define |[1]#_g119675_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119676_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119675_|)))
  (define |[1]#_g119677_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg119280%_)
       (arg119193 . _%arg119193119250%_)
       (id . _%id119217%_)
       (arg119194 . _%arg119194119264%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119678_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119677_|)))
  (define |[1]#_g119680_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119681_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119680_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx118906%_)
        (let* ((_%__stx119576119577%_ _%$stx118906%_)
               (_%g118911118932%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119576119577%_))))
          (let ((_%__kont119579119580%_
                 (lambda (_%g118913118998%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119668_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp119669
                                                  (lambda (_%g119013119016%_
                                                           _%g119014119019%_)
                                                    (cons _%g119013119016%_
                                                          _%g119014119019%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119669
                                              '()
                                              _%g118913118998%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119671_|
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
                (_%__kont119583119584%_
                 (lambda (_%g118926118939%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g118910118951%_
                    (lambda ()
                      (let ((_%g118926118939%_ _%__stx119576119577%_))
                        (if (gx#identifier? _%g118926118939%_)
                            (_%__kont119583119584%_ _%g118926118939%_)
                            (let ()
                              (declare (not safe))
                              (_%g118911118932%_))))))
                   (_%__match119599119600%_
                    (lambda (_%e118914118958%_
                             _%hd118915118962%_
                             _%tl118916118965%_
                             _%__splice119581119582%_
                             _%target118917118968%_
                             _%tl118919118971%_)
                      (letrec ((_%loop118920118974%_
                                (lambda (_%hd118918118978%_
                                         _%arg118924118981%_)
                                  (if (gx#stx-pair? _%hd118918118978%_)
                                      (let ((_%e118921118984%_
                                             (gx#syntax-e _%hd118918118978%_)))
                                        (let ((_%lp-tl118923118991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e118921118984%_)))
                                              (_%lp-hd118922118988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e118921118984%_))))
                                          (_%loop118920118974%_
                                           _%lp-tl118923118991%_
                                           (cons _%lp-hd118922118988%_
                                                 _%arg118924118981%_))))
                                      (let ((_%arg118925118994%_
                                             (reverse _%arg118924118981%_)))
                                        (_%__kont119579119580%_
                                         _%arg118925118994%_))))))
                        (_%loop118920118974%_ _%target118917118968%_ '())))))
              (if (gx#stx-pair? _%__stx119576119577%_)
                  (let ((_%e118914118958%_
                         (gx#syntax-e _%__stx119576119577%_)))
                    (let ((_%tl118916118965%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e118914118958%_)))
                          (_%hd118915118962%_
                           (let ()
                             (declare (not safe))
                             (##car _%e118914118958%_))))
                      (if (gx#stx-pair/null? _%tl118916118965%_)
                          (let ((_%__splice119581119582%_
                                 (gx#syntax-split-splice->vector
                                  _%tl118916118965%_
                                  '0)))
                            (let ((_%tl118919118971%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119581119582%_
                                      '1)))
                                  (_%target118917118968%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119581119582%_
                                      '0))))
                              (if (gx#stx-null? _%tl118919118971%_)
                                  (_%__match119599119600%_
                                   _%e118914118958%_
                                   _%hd118915118962%_
                                   _%tl118916118965%_
                                   _%__splice119581119582%_
                                   _%target118917118968%_
                                   _%tl118919118971%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g118910118951%_)))))
                          (let () (declare (not safe)) (_%g118910118951%_)))))
                  (let () (declare (not safe)) (_%g118910118951%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx119041%_)
        (let* ((_%__stx119602119603%_ _%$stx119041%_)
               (_%g119046119067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119602119603%_))))
          (let ((_%__kont119605119606%_
                 (lambda (_%g119048119132%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119673_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp119674
                                                  (lambda (_%g119147119150%_
                                                           _%g119148119153%_)
                                                    (cons _%g119147119150%_
                                                          _%g119148119153%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119674
                                              '()
                                              _%g119048119132%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119676_|
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
                (_%__kont119609119610%_
                 (lambda (_%g119061119074%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g119045119085%_
                    (lambda ()
                      (let ((_%g119061119074%_ _%__stx119602119603%_))
                        (if (gx#identifier? _%g119061119074%_)
                            (_%__kont119609119610%_ _%g119061119074%_)
                            (let ()
                              (declare (not safe))
                              (_%g119046119067%_))))))
                   (_%__match119625119626%_
                    (lambda (_%e119049119092%_
                             _%hd119050119096%_
                             _%tl119051119099%_
                             _%__splice119607119608%_
                             _%target119052119102%_
                             _%tl119054119105%_)
                      (letrec ((_%loop119055119108%_
                                (lambda (_%hd119053119112%_
                                         _%arg119059119115%_)
                                  (if (gx#stx-pair? _%hd119053119112%_)
                                      (let ((_%e119056119118%_
                                             (gx#syntax-e _%hd119053119112%_)))
                                        (let ((_%lp-tl119058119125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119056119118%_)))
                                              (_%lp-hd119057119122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119056119118%_))))
                                          (_%loop119055119108%_
                                           _%lp-tl119058119125%_
                                           (cons _%lp-hd119057119122%_
                                                 _%arg119059119115%_))))
                                      (let ((_%arg119060119128%_
                                             (reverse _%arg119059119115%_)))
                                        (_%__kont119605119606%_
                                         _%arg119060119128%_))))))
                        (_%loop119055119108%_ _%target119052119102%_ '())))))
              (if (gx#stx-pair? _%__stx119602119603%_)
                  (let ((_%e119049119092%_
                         (gx#syntax-e _%__stx119602119603%_)))
                    (let ((_%tl119051119099%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119049119092%_)))
                          (_%hd119050119096%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119049119092%_))))
                      (if (gx#stx-pair/null? _%tl119051119099%_)
                          (let ((_%__splice119607119608%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119051119099%_
                                  '0)))
                            (let ((_%tl119054119105%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119607119608%_
                                      '1)))
                                  (_%target119052119102%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119607119608%_
                                      '0))))
                              (if (gx#stx-null? _%tl119054119105%_)
                                  (_%__match119625119626%_
                                   _%e119049119092%_
                                   _%hd119050119096%_
                                   _%tl119051119099%_
                                   _%__splice119607119608%_
                                   _%target119052119102%_
                                   _%tl119054119105%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119045119085%_)))))
                          (let () (declare (not safe)) (_%g119045119085%_)))))
                  (let () (declare (not safe)) (_%g119045119085%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx119175%_)
        (let* ((_%__stx119628119629%_ _%$stx119175%_)
               (_%g119180119201%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119628119629%_))))
          (let ((_%__kont119631119632%_
                 (lambda (_%g119182119266%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119678_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp119679
                                                  (lambda (_%g119281119284%_
                                                           _%g119282119287%_)
                                                    (cons _%g119281119284%_
                                                          _%g119282119287%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119679
                                              '()
                                              _%g119182119266%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119681_|
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
                (_%__kont119635119636%_
                 (lambda (_%g119195119208%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g119179119219%_
                    (lambda ()
                      (let ((_%g119195119208%_ _%__stx119628119629%_))
                        (if (gx#identifier? _%g119195119208%_)
                            (_%__kont119635119636%_ _%g119195119208%_)
                            (let ()
                              (declare (not safe))
                              (_%g119180119201%_))))))
                   (_%__match119651119652%_
                    (lambda (_%e119183119226%_
                             _%hd119184119230%_
                             _%tl119185119233%_
                             _%__splice119633119634%_
                             _%target119186119236%_
                             _%tl119188119239%_)
                      (letrec ((_%loop119189119242%_
                                (lambda (_%hd119187119246%_
                                         _%arg119193119249%_)
                                  (if (gx#stx-pair? _%hd119187119246%_)
                                      (let ((_%e119190119252%_
                                             (gx#syntax-e _%hd119187119246%_)))
                                        (let ((_%lp-tl119192119259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119190119252%_)))
                                              (_%lp-hd119191119256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119190119252%_))))
                                          (_%loop119189119242%_
                                           _%lp-tl119192119259%_
                                           (cons _%lp-hd119191119256%_
                                                 _%arg119193119249%_))))
                                      (let ((_%arg119194119262%_
                                             (reverse _%arg119193119249%_)))
                                        (_%__kont119631119632%_
                                         _%arg119194119262%_))))))
                        (_%loop119189119242%_ _%target119186119236%_ '())))))
              (if (gx#stx-pair? _%__stx119628119629%_)
                  (let ((_%e119183119226%_
                         (gx#syntax-e _%__stx119628119629%_)))
                    (let ((_%tl119185119233%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119183119226%_)))
                          (_%hd119184119230%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119183119226%_))))
                      (if (gx#stx-pair/null? _%tl119185119233%_)
                          (let ((_%__splice119633119634%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119185119233%_
                                  '0)))
                            (let ((_%tl119188119239%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119633119634%_
                                      '1)))
                                  (_%target119186119236%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119633119634%_
                                      '0))))
                              (if (gx#stx-null? _%tl119188119239%_)
                                  (_%__match119651119652%_
                                   _%e119183119226%_
                                   _%hd119184119230%_
                                   _%tl119185119233%_
                                   _%__splice119633119634%_
                                   _%target119186119236%_
                                   _%tl119188119239%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119179119219%_)))))
                          (let () (declare (not safe)) (_%g119179119219%_)))))
                  (let () (declare (not safe)) (_%g119179119219%_))))))))))

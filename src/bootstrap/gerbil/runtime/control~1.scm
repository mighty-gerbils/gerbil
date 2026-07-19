(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g125933_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg125278%_)
       ($%arg125190 . _%$%arg125190125248%_)
       (id . _%id125215%_)
       ($%arg125191 . _%$%arg125191125262%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g125934_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g125933_|)))
  (define |[1]#_g125936_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g125937_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g125936_|)))
  (define |[1]#_g125938_|
    (gx#core-deserialize-mark
     '(0
       ($%arg125311 . _%$%arg125311125368%_)
       (arg . _%arg125398%_)
       ($%arg125312 . _%$%arg125312125382%_)
       (id . _%id125335%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g125939_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g125938_|)))
  (define |[1]#_g125941_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g125942_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g125941_|)))
  (define |[1]#_g125943_|
    (gx#core-deserialize-mark
     '(0
       ($%arg125432 . _%$%arg125432125502%_)
       ($%arg125431 . _%$%arg125431125488%_)
       (arg . _%arg125518%_)
       (id . _%id125455%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g125944_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g125943_|)))
  (define |[1]#_g125946_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g125947_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g125946_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx125172%_)
        (let* ((_%__stx125842125843%_ _%$stx125172%_)
               (_%$%g125177125198%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx125842125843%_))))
          (let ((_%__kont125845125846%_
                 (lambda (_%$%g125179125264%_)
                   (cons (gx#datum->syntax
                          |[1]#_g125934_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp125935
                                                  (lambda (_%$%g125279125282%_
                                                           _%$%g125280125285%_)
                                                    (cons _%$%g125279125282%_
                                                          _%$%g125280125285%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp125935
                                              '()
                                              _%$%g125179125264%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g125937_|
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
                (_%__kont125849125850%_
                 (lambda (_%$%g125192125205%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%$%g125176125217%_
                    (lambda ()
                      (let ((_%$%g125192125205%_ _%__stx125842125843%_))
                        (if (gx#identifier? _%$%g125192125205%_)
                            (_%__kont125849125850%_ _%$%g125192125205%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g125177125198%_))))))
                   (_%__match125865125866%_
                    (lambda (_%$%e125180125224%_
                             _%$%hd125181125228%_
                             _%$%tl125182125231%_
                             _%__splice125847125848%_
                             _%$%target125183125234%_
                             _%$%tl125185125237%_)
                      (letrec ((_%$%loop125186125240%_
                                (lambda (_%$%hd125184125244%_
                                         _%$%arg125190125247%_)
                                  (if (gx#stx-pair? _%$%hd125184125244%_)
                                      (let ((_%$%e125187125250%_
                                             (gx#syntax-e
                                              _%$%hd125184125244%_)))
                                        (let ((_%$%lp-tl125189125257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e125187125250%_)))
                                              (_%$%lp-hd125188125254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e125187125250%_))))
                                          (_%$%loop125186125240%_
                                           _%$%lp-tl125189125257%_
                                           (cons _%$%lp-hd125188125254%_
                                                 _%$%arg125190125247%_))))
                                      (let ((_%$%arg125191125260%_
                                             (reverse _%$%arg125190125247%_)))
                                        (_%__kont125845125846%_
                                         _%$%arg125191125260%_))))))
                        (_%$%loop125186125240%_
                         _%$%target125183125234%_
                         '())))))
              (if (gx#stx-pair? _%__stx125842125843%_)
                  (let ((_%$%e125180125224%_
                         (gx#syntax-e _%__stx125842125843%_)))
                    (let ((_%$%tl125182125231%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e125180125224%_)))
                          (_%$%hd125181125228%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e125180125224%_))))
                      (if (gx#stx-pair/null? _%$%tl125182125231%_)
                          (let ((_%__splice125847125848%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl125182125231%_
                                  '0)))
                            (let ((_%$%tl125185125237%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice125847125848%_
                                      '1)))
                                  (_%$%target125183125234%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice125847125848%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl125185125237%_)
                                  (_%__match125865125866%_
                                   _%$%e125180125224%_
                                   _%$%hd125181125228%_
                                   _%$%tl125182125231%_
                                   _%__splice125847125848%_
                                   _%$%target125183125234%_
                                   _%$%tl125185125237%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g125176125217%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g125176125217%_)))))
                  (let () (declare (not safe)) (_%$%g125176125217%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx125293%_)
        (let* ((_%__stx125868125869%_ _%$stx125293%_)
               (_%$%g125298125319%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx125868125869%_))))
          (let ((_%__kont125871125872%_
                 (lambda (_%$%g125300125384%_)
                   (cons (gx#datum->syntax
                          |[1]#_g125939_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp125940
                                                  (lambda (_%$%g125399125402%_
                                                           _%$%g125400125405%_)
                                                    (cons _%$%g125399125402%_
                                                          _%$%g125400125405%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp125940
                                              '()
                                              _%$%g125300125384%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g125942_|
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
                (_%__kont125875125876%_
                 (lambda (_%$%g125313125326%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%$%g125297125337%_
                    (lambda ()
                      (let ((_%$%g125313125326%_ _%__stx125868125869%_))
                        (if (gx#identifier? _%$%g125313125326%_)
                            (_%__kont125875125876%_ _%$%g125313125326%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g125298125319%_))))))
                   (_%__match125891125892%_
                    (lambda (_%$%e125301125344%_
                             _%$%hd125302125348%_
                             _%$%tl125303125351%_
                             _%__splice125873125874%_
                             _%$%target125304125354%_
                             _%$%tl125306125357%_)
                      (letrec ((_%$%loop125307125360%_
                                (lambda (_%$%hd125305125364%_
                                         _%$%arg125311125367%_)
                                  (if (gx#stx-pair? _%$%hd125305125364%_)
                                      (let ((_%$%e125308125370%_
                                             (gx#syntax-e
                                              _%$%hd125305125364%_)))
                                        (let ((_%$%lp-tl125310125377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e125308125370%_)))
                                              (_%$%lp-hd125309125374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e125308125370%_))))
                                          (_%$%loop125307125360%_
                                           _%$%lp-tl125310125377%_
                                           (cons _%$%lp-hd125309125374%_
                                                 _%$%arg125311125367%_))))
                                      (let ((_%$%arg125312125380%_
                                             (reverse _%$%arg125311125367%_)))
                                        (_%__kont125871125872%_
                                         _%$%arg125312125380%_))))))
                        (_%$%loop125307125360%_
                         _%$%target125304125354%_
                         '())))))
              (if (gx#stx-pair? _%__stx125868125869%_)
                  (let ((_%$%e125301125344%_
                         (gx#syntax-e _%__stx125868125869%_)))
                    (let ((_%$%tl125303125351%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e125301125344%_)))
                          (_%$%hd125302125348%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e125301125344%_))))
                      (if (gx#stx-pair/null? _%$%tl125303125351%_)
                          (let ((_%__splice125873125874%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl125303125351%_
                                  '0)))
                            (let ((_%$%tl125306125357%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice125873125874%_
                                      '1)))
                                  (_%$%target125304125354%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice125873125874%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl125306125357%_)
                                  (_%__match125891125892%_
                                   _%$%e125301125344%_
                                   _%$%hd125302125348%_
                                   _%$%tl125303125351%_
                                   _%__splice125873125874%_
                                   _%$%target125304125354%_
                                   _%$%tl125306125357%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g125297125337%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g125297125337%_)))))
                  (let () (declare (not safe)) (_%$%g125297125337%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx125413%_)
        (let* ((_%__stx125894125895%_ _%$stx125413%_)
               (_%$%g125418125439%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx125894125895%_))))
          (let ((_%__kont125897125898%_
                 (lambda (_%$%g125420125504%_)
                   (cons (gx#datum->syntax
                          |[1]#_g125944_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp125945
                                                  (lambda (_%$%g125519125522%_
                                                           _%$%g125520125525%_)
                                                    (cons _%$%g125519125522%_
                                                          _%$%g125520125525%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp125945
                                              '()
                                              _%$%g125420125504%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g125947_|
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
                (_%__kont125901125902%_
                 (lambda (_%$%g125433125446%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%$%g125417125457%_
                    (lambda ()
                      (let ((_%$%g125433125446%_ _%__stx125894125895%_))
                        (if (gx#identifier? _%$%g125433125446%_)
                            (_%__kont125901125902%_ _%$%g125433125446%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g125418125439%_))))))
                   (_%__match125917125918%_
                    (lambda (_%$%e125421125464%_
                             _%$%hd125422125468%_
                             _%$%tl125423125471%_
                             _%__splice125899125900%_
                             _%$%target125424125474%_
                             _%$%tl125426125477%_)
                      (letrec ((_%$%loop125427125480%_
                                (lambda (_%$%hd125425125484%_
                                         _%$%arg125431125487%_)
                                  (if (gx#stx-pair? _%$%hd125425125484%_)
                                      (let ((_%$%e125428125490%_
                                             (gx#syntax-e
                                              _%$%hd125425125484%_)))
                                        (let ((_%$%lp-tl125430125497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e125428125490%_)))
                                              (_%$%lp-hd125429125494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e125428125490%_))))
                                          (_%$%loop125427125480%_
                                           _%$%lp-tl125430125497%_
                                           (cons _%$%lp-hd125429125494%_
                                                 _%$%arg125431125487%_))))
                                      (let ((_%$%arg125432125500%_
                                             (reverse _%$%arg125431125487%_)))
                                        (_%__kont125897125898%_
                                         _%$%arg125432125500%_))))))
                        (_%$%loop125427125480%_
                         _%$%target125424125474%_
                         '())))))
              (if (gx#stx-pair? _%__stx125894125895%_)
                  (let ((_%$%e125421125464%_
                         (gx#syntax-e _%__stx125894125895%_)))
                    (let ((_%$%tl125423125471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e125421125464%_)))
                          (_%$%hd125422125468%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e125421125464%_))))
                      (if (gx#stx-pair/null? _%$%tl125423125471%_)
                          (let ((_%__splice125899125900%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl125423125471%_
                                  '0)))
                            (let ((_%$%tl125426125477%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice125899125900%_
                                      '1)))
                                  (_%$%target125424125474%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice125899125900%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl125426125477%_)
                                  (_%__match125917125918%_
                                   _%$%e125421125464%_
                                   _%$%hd125422125468%_
                                   _%$%tl125423125471%_
                                   _%__splice125899125900%_
                                   _%$%target125424125474%_
                                   _%$%tl125426125477%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g125417125457%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g125417125457%_)))))
                  (let () (declare (not safe)) (_%$%g125417125457%_))))))))))

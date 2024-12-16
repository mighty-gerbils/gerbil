(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1734357960)
  (begin
    (define make-promise
      (lambda (_%thunk95250%_)
        (if (procedure? _%thunk95250%_)
            (let ((_%thunk95254%_ _%thunk95250%_))
              (__make-promise _%thunk95254%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk95250%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk95238%_)
        (let ((_%thunk95241%_ _%thunk95238%_))
          (declare (not safe))
          (##make-delay-promise _%thunk95241%_))))
    (define call-with-parameters
      (lambda (_%thunk95223%_ . _%rest95224%_)
        (if (procedure? _%thunk95223%_)
            (let ((_%thunk95228%_ _%thunk95223%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk95228%_ _%rest95224%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk95223%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk95161%_ . _%rest95162%_)
        (let* ((_%thunk95165%_ _%thunk95161%_)
               (_%rest9517395184%_ _%rest95162%_)
               (_%E9517695188%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9517395184%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9517895204%_
                 (lambda (_%rest95199%_ _%val95200%_ _%param95201%_)
                   (let ((__tmp95276
                          (if (null? _%rest95199%_)
                              _%thunk95165%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk95165%_
                                       _%rest95199%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param95201%_
                      _%val95200%_
                      __tmp95276))))
                (_%K9517795193%_
                 (lambda () (let () (declare (not safe)) (_%thunk95165%_)))))
            (let ((_%try-match9517595196%_
                   (lambda ()
                     (if (null? _%rest9517395184%_)
                         (let () (declare (not safe)) (_%thunk95165%_))
                         (_%E9517695188%_)))))
              (if (pair? _%rest9517395184%_)
                  (let ((_%tl9518095209%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9517395184%_)))
                        (_%hd9517995207%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9517395184%_))))
                    (if (pair? _%tl9518095209%_)
                        (let ((_%tl9518295216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9518095209%_)))
                              (_%hd9518195214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9518095209%_))))
                          (let ((_%param95212%_ _%hd9517995207%_)
                                (_%val95219%_ _%hd9518195214%_)
                                (_%rest95221%_ _%tl9518295216%_))
                            (_%K9517895204%_
                             _%rest95221%_
                             _%val95219%_
                             _%param95212%_)))
                        (_%E9517695188%_)))
                  (_%try-match9517595196%_)))))))
    (define with-unwind-protect
      (lambda (_%K95136%_ _%fini95137%_)
        (if (procedure? _%K95136%_)
            (let ((_%K95141%_ _%K95136%_))
              (if (procedure? _%fini95137%_)
                  (let ((_%fini95151%_ _%fini95137%_))
                    (__with-unwind-protect _%K95141%_ _%fini95151%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini95137%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K95136%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K95110%_ _%fini95111%_)
        (let* ((_%K95114%_ _%K95110%_)
               (_%fini95123%_ _%fini95111%_)
               (_%once95132%_ '#f)
               (__tmp95277
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once95132%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once95132%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp95277 _%K95114%_ _%fini95123%_))))
    (define keyword-dispatch
      (lambda (_%kwt95003%_ _%K95004%_ . _%all-args95005%_)
        (if _%kwt95003%_
            (if (vector? _%kwt95003%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt95003%_))
            '#!void)
        (if (procedure? _%K95004%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K95004%_))
        (let ((_%keys95007%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp95009%_ ((_%rest95011%_ _%all-args95005%_)
                            (_%args95012%_ '#f)
                            (_%tail95013%_ '#f))
            (let* ((_%rest9501495022%_ _%rest95011%_)
                   (_%else9501695030%_
                    (lambda ()
                      (if _%args95012%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail95013%_ '()))
                            (let ((__tmp95278
                                   (cons _%keys95007%_ _%args95012%_)))
                              (declare (not safe))
                              (##apply _%K95004%_ __tmp95278)))
                          (_%K95004%_ _%keys95007%_))))
                   (_%K9501895098%_
                    (lambda (_%hd-rest95033%_ _%hd95034%_)
                      (if (keyword? _%hd95034%_)
                          (let* ((_%hd-rest9503695043%_ _%hd-rest95033%_)
                                 (_%E9503895047%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9503695043%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9503995055%_
                                  (lambda (_%rest95050%_ _%val95051%_)
                                    (if _%kwt95003%_
                                        (let ((_%pos95053%_
                                               (let ((__tmp95280
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd95034%_)))
                                                     (__tmp95279
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt95003%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp95280
                                                  __tmp95279))))
                                          (if (eq? _%hd95034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt95003%_
                                                      _%pos95053%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K95004%_
                                                     _%hd95034%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys95007%_
                                                _%hd95034%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K95004%_
                                               _%hd95034%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys95007%_
                                       _%hd95034%_
                                       _%val95051%_))
                                    (_%lp95009%_
                                     _%rest95050%_
                                     _%args95012%_
                                     _%tail95013%_))))
                            (if (pair? _%hd-rest9503695043%_)
                                (let ((_%hd9504095058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9503695043%_)))
                                      (_%tl9504195060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9503695043%_))))
                                  (let* ((_%val95063%_ _%hd9504095058%_)
                                         (_%rest95065%_ _%tl9504195060%_))
                                    (_%K9503995055%_
                                     _%rest95065%_
                                     _%val95063%_)))
                                (_%E9503895047%_)))
                          (if (eq? _%hd95034%_ '#!key)
                              (let* ((_%hd-rest9506795074%_ _%hd-rest95033%_)
                                     (_%E9506995078%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9506795074%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9507095084%_
                                      (lambda (_%rest95081%_ _%val95082%_)
                                        (if _%args95012%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail95013%_
                                                 _%hd-rest95033%_))
                                              (_%lp95009%_
                                               _%rest95081%_
                                               _%args95012%_
                                               _%hd-rest95033%_))
                                            (_%lp95009%_
                                             _%rest95081%_
                                             _%hd-rest95033%_
                                             _%hd-rest95033%_)))))
                                (if (pair? _%hd-rest9506795074%_)
                                    (let ((_%hd9507195087%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9506795074%_)))
                                          (_%tl9507295089%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9506795074%_))))
                                      (let* ((_%val95092%_ _%hd9507195087%_)
                                             (_%rest95094%_ _%tl9507295089%_))
                                        (_%K9507095084%_
                                         _%rest95094%_
                                         _%val95092%_)))
                                    (_%E9506995078%_)))
                              (if (eq? _%hd95034%_ '#!rest)
                                  (if _%args95012%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail95013%_
                                           _%hd-rest95033%_))
                                        (let ((__tmp95281
                                               (cons _%keys95007%_
                                                     _%args95012%_)))
                                          (declare (not safe))
                                          (##apply _%K95004%_ __tmp95281)))
                                      (let ((__tmp95282
                                             (cons _%keys95007%_
                                                   _%hd-rest95033%_)))
                                        (declare (not safe))
                                        (##apply _%K95004%_ __tmp95282)))
                                  (if _%args95012%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail95013%_
                                           _%rest95011%_))
                                        (_%lp95009%_
                                         _%hd-rest95033%_
                                         _%args95012%_
                                         _%rest95011%_))
                                      (_%lp95009%_
                                       _%hd-rest95033%_
                                       _%rest95011%_
                                       _%rest95011%_))))))))
              (if (pair? _%rest9501495022%_)
                  (let ((_%hd9501995101%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9501495022%_)))
                        (_%tl9502095103%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9501495022%_))))
                    (let* ((_%hd95106%_ _%hd9501995101%_)
                           (_%hd-rest95108%_ _%tl9502095103%_))
                      (_%K9501895098%_ _%hd-rest95108%_ _%hd95106%_)))
                  (_%else9501695030%_)))))))
    (define keyword-rest
      (lambda (_%kwt94995%_ . _%drop94996%_)
        (let ((_%rest94998%_ '()))
          (let ((__tmp95283
                 (lambda (_%k95000%_ _%v95001%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k95000%_ _%drop94996%_))
                       '#!void
                       (set! _%rest94998%_
                             (cons _%k95000%_
                                   (cons _%v95001%_ _%rest94998%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt94995%_ __tmp95283))
          _%rest94998%_)))))

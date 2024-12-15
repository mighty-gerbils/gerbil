(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1734279326)
  (begin
    (define make-promise
      (lambda (_%thunk95151%_)
        (if (procedure? _%thunk95151%_)
            (let ((_%thunk95155%_ _%thunk95151%_))
              (__make-promise _%thunk95155%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk95151%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk95139%_)
        (let ((_%thunk95142%_ _%thunk95139%_))
          (declare (not safe))
          (##make-delay-promise _%thunk95142%_))))
    (define call-with-parameters
      (lambda (_%thunk95124%_ . _%rest95125%_)
        (if (procedure? _%thunk95124%_)
            (let ((_%thunk95129%_ _%thunk95124%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk95129%_ _%rest95125%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk95124%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk95062%_ . _%rest95063%_)
        (let* ((_%thunk95066%_ _%thunk95062%_)
               (_%rest9507495085%_ _%rest95063%_)
               (_%E9507795089%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9507495085%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9507995105%_
                 (lambda (_%rest95100%_ _%val95101%_ _%param95102%_)
                   (let ((__tmp95177
                          (if (null? _%rest95100%_)
                              _%thunk95066%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk95066%_
                                       _%rest95100%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param95102%_
                      _%val95101%_
                      __tmp95177))))
                (_%K9507895094%_
                 (lambda () (let () (declare (not safe)) (_%thunk95066%_)))))
            (let ((_%try-match9507695097%_
                   (lambda ()
                     (if (null? _%rest9507495085%_)
                         (let () (declare (not safe)) (_%thunk95066%_))
                         (_%E9507795089%_)))))
              (if (pair? _%rest9507495085%_)
                  (let ((_%tl9508195110%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9507495085%_)))
                        (_%hd9508095108%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9507495085%_))))
                    (if (pair? _%tl9508195110%_)
                        (let ((_%tl9508395117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9508195110%_)))
                              (_%hd9508295115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9508195110%_))))
                          (let ((_%param95113%_ _%hd9508095108%_)
                                (_%val95120%_ _%hd9508295115%_)
                                (_%rest95122%_ _%tl9508395117%_))
                            (_%K9507995105%_
                             _%rest95122%_
                             _%val95120%_
                             _%param95113%_)))
                        (_%E9507795089%_)))
                  (_%try-match9507695097%_)))))))
    (define with-unwind-protect
      (lambda (_%K95037%_ _%fini95038%_)
        (if (procedure? _%K95037%_)
            (let ((_%K95042%_ _%K95037%_))
              (if (procedure? _%fini95038%_)
                  (let ((_%fini95052%_ _%fini95038%_))
                    (__with-unwind-protect _%K95042%_ _%fini95052%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini95038%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K95037%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K95011%_ _%fini95012%_)
        (let* ((_%K95015%_ _%K95011%_)
               (_%fini95024%_ _%fini95012%_)
               (_%once95033%_ '#f)
               (__tmp95178
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once95033%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once95033%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp95178 _%K95015%_ _%fini95024%_))))
    (define keyword-dispatch
      (lambda (_%kwt94904%_ _%K94905%_ . _%all-args94906%_)
        (if _%kwt94904%_
            (if (vector? _%kwt94904%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt94904%_))
            '#!void)
        (if (procedure? _%K94905%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K94905%_))
        (let ((_%keys94908%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp94910%_ ((_%rest94912%_ _%all-args94906%_)
                            (_%args94913%_ '#f)
                            (_%tail94914%_ '#f))
            (let* ((_%rest9491594923%_ _%rest94912%_)
                   (_%else9491794931%_
                    (lambda ()
                      (if _%args94913%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail94914%_ '()))
                            (let ((__tmp95179
                                   (cons _%keys94908%_ _%args94913%_)))
                              (declare (not safe))
                              (##apply _%K94905%_ __tmp95179)))
                          (_%K94905%_ _%keys94908%_))))
                   (_%K9491994999%_
                    (lambda (_%hd-rest94934%_ _%hd94935%_)
                      (if (keyword? _%hd94935%_)
                          (let* ((_%hd-rest9493794944%_ _%hd-rest94934%_)
                                 (_%E9493994948%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9493794944%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9494094956%_
                                  (lambda (_%rest94951%_ _%val94952%_)
                                    (if _%kwt94904%_
                                        (let ((_%pos94954%_
                                               (let ((__tmp95181
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd94935%_)))
                                                     (__tmp95180
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt94904%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp95181
                                                  __tmp95180))))
                                          (if (eq? _%hd94935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt94904%_
                                                      _%pos94954%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K94905%_
                                                     _%hd94935%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys94908%_
                                                _%hd94935%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K94905%_
                                               _%hd94935%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys94908%_
                                       _%hd94935%_
                                       _%val94952%_))
                                    (_%lp94910%_
                                     _%rest94951%_
                                     _%args94913%_
                                     _%tail94914%_))))
                            (if (pair? _%hd-rest9493794944%_)
                                (let ((_%hd9494194959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9493794944%_)))
                                      (_%tl9494294961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9493794944%_))))
                                  (let* ((_%val94964%_ _%hd9494194959%_)
                                         (_%rest94966%_ _%tl9494294961%_))
                                    (_%K9494094956%_
                                     _%rest94966%_
                                     _%val94964%_)))
                                (_%E9493994948%_)))
                          (if (eq? _%hd94935%_ '#!key)
                              (let* ((_%hd-rest9496894975%_ _%hd-rest94934%_)
                                     (_%E9497094979%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9496894975%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9497194985%_
                                      (lambda (_%rest94982%_ _%val94983%_)
                                        (if _%args94913%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail94914%_
                                                 _%hd-rest94934%_))
                                              (_%lp94910%_
                                               _%rest94982%_
                                               _%args94913%_
                                               _%hd-rest94934%_))
                                            (_%lp94910%_
                                             _%rest94982%_
                                             _%hd-rest94934%_
                                             _%hd-rest94934%_)))))
                                (if (pair? _%hd-rest9496894975%_)
                                    (let ((_%hd9497294988%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9496894975%_)))
                                          (_%tl9497394990%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9496894975%_))))
                                      (let* ((_%val94993%_ _%hd9497294988%_)
                                             (_%rest94995%_ _%tl9497394990%_))
                                        (_%K9497194985%_
                                         _%rest94995%_
                                         _%val94993%_)))
                                    (_%E9497094979%_)))
                              (if (eq? _%hd94935%_ '#!rest)
                                  (if _%args94913%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94914%_
                                           _%hd-rest94934%_))
                                        (let ((__tmp95182
                                               (cons _%keys94908%_
                                                     _%args94913%_)))
                                          (declare (not safe))
                                          (##apply _%K94905%_ __tmp95182)))
                                      (let ((__tmp95183
                                             (cons _%keys94908%_
                                                   _%hd-rest94934%_)))
                                        (declare (not safe))
                                        (##apply _%K94905%_ __tmp95183)))
                                  (if _%args94913%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94914%_
                                           _%rest94912%_))
                                        (_%lp94910%_
                                         _%hd-rest94934%_
                                         _%args94913%_
                                         _%rest94912%_))
                                      (_%lp94910%_
                                       _%hd-rest94934%_
                                       _%rest94912%_
                                       _%rest94912%_))))))))
              (if (pair? _%rest9491594923%_)
                  (let ((_%hd9492095002%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9491594923%_)))
                        (_%tl9492195004%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9491594923%_))))
                    (let* ((_%hd95007%_ _%hd9492095002%_)
                           (_%hd-rest95009%_ _%tl9492195004%_))
                      (_%K9491994999%_ _%hd-rest95009%_ _%hd95007%_)))
                  (_%else9491794931%_)))))))
    (define keyword-rest
      (lambda (_%kwt94896%_ . _%drop94897%_)
        (let ((_%rest94899%_ '()))
          (let ((__tmp95184
                 (lambda (_%k94901%_ _%v94902%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k94901%_ _%drop94897%_))
                       '#!void
                       (set! _%rest94899%_
                             (cons _%k94901%_
                                   (cons _%v94902%_ _%rest94899%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt94896%_ __tmp95184))
          _%rest94899%_)))))

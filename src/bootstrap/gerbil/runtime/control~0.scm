(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1713044314)
  (begin
    (define make-promise
      (lambda (_%thunk92746%_)
        (if (procedure? _%thunk92746%_)
            (let ((_%thunk92750%_ _%thunk92746%_))
              (__make-promise _%thunk92750%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk92746%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk92734%_)
        (let ((_%thunk92737%_ _%thunk92734%_))
          (declare (not safe))
          (##make-delay-promise _%thunk92737%_))))
    (define call-with-parameters
      (lambda (_%thunk92719%_ . _%rest92720%_)
        (if (procedure? _%thunk92719%_)
            (let ((_%thunk92724%_ _%thunk92719%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk92724%_ _%rest92720%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk92719%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk92657%_ . _%rest92658%_)
        (let* ((_%thunk92661%_ _%thunk92657%_)
               (_%rest9266992680%_ _%rest92658%_)
               (_%E9267292684%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9266992680%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9267492700%_
                 (lambda (_%rest92695%_ _%val92696%_ _%param92697%_)
                   (let ((__tmp92772
                          (if (null? _%rest92695%_)
                              _%thunk92661%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk92661%_
                                       _%rest92695%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param92697%_
                      _%val92696%_
                      __tmp92772))))
                (_%K9267392689%_
                 (lambda () (let () (declare (not safe)) (_%thunk92661%_)))))
            (let ((_%try-match9267192692%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9266992680%_))
                         (let () (declare (not safe)) (_%thunk92661%_))
                         (_%E9267292684%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9266992680%_))
                  (let ((_%tl9267692705%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9266992680%_)))
                        (_%hd9267592703%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9266992680%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9267692705%_))
                        (let ((_%tl9267892712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9267692705%_)))
                              (_%hd9267792710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9267692705%_))))
                          (let ((_%param92708%_ _%hd9267592703%_)
                                (_%val92715%_ _%hd9267792710%_)
                                (_%rest92717%_ _%tl9267892712%_))
                            (_%K9267492700%_
                             _%rest92717%_
                             _%val92715%_
                             _%param92708%_)))
                        (_%E9267292684%_)))
                  (_%try-match9267192692%_)))))))
    (define with-unwind-protect
      (lambda (_%K92632%_ _%fini92633%_)
        (if (procedure? _%K92632%_)
            (let ((_%K92637%_ _%K92632%_))
              (if (procedure? _%fini92633%_)
                  (let ((_%fini92647%_ _%fini92633%_))
                    (__with-unwind-protect _%K92637%_ _%fini92647%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini92633%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K92632%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K92606%_ _%fini92607%_)
        (let* ((_%K92610%_ _%K92606%_)
               (_%fini92619%_ _%fini92607%_)
               (_%once92628%_ '#f)
               (__tmp92773
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once92628%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once92628%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp92773 _%K92610%_ _%fini92619%_))))
    (define keyword-dispatch
      (lambda (_%kwt92499%_ _%K92500%_ . _%all-args92501%_)
        (if _%kwt92499%_
            (if (vector? _%kwt92499%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt92499%_))
            '#!void)
        (if (procedure? _%K92500%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K92500%_))
        (let ((_%keys92503%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp92505%_ ((_%rest92507%_ _%all-args92501%_)
                            (_%args92508%_ '#f)
                            (_%tail92509%_ '#f))
            (let* ((_%rest9251092518%_ _%rest92507%_)
                   (_%else9251292526%_
                    (lambda ()
                      (if _%args92508%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail92509%_ '()))
                            (let ((__tmp92774
                                   (cons _%keys92503%_ _%args92508%_)))
                              (declare (not safe))
                              (##apply _%K92500%_ __tmp92774)))
                          (_%K92500%_ _%keys92503%_))))
                   (_%K9251492594%_
                    (lambda (_%hd-rest92529%_ _%hd92530%_)
                      (if (keyword? _%hd92530%_)
                          (let* ((_%hd-rest9253292539%_ _%hd-rest92529%_)
                                 (_%E9253492543%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9253292539%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9253592551%_
                                  (lambda (_%rest92546%_ _%val92547%_)
                                    (if _%kwt92499%_
                                        (let ((_%pos92549%_
                                               (let ((__tmp92776
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd92530%_)))
                                                     (__tmp92775
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt92499%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp92776
                                                  __tmp92775))))
                                          (if (eq? _%hd92530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt92499%_
                                                      _%pos92549%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K92500%_
                                                     _%hd92530%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys92503%_
                                                _%hd92530%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K92500%_
                                               _%hd92530%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys92503%_
                                       _%hd92530%_
                                       _%val92547%_))
                                    (_%lp92505%_
                                     _%rest92546%_
                                     _%args92508%_
                                     _%tail92509%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9253292539%_))
                                (let ((_%hd9253692554%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9253292539%_)))
                                      (_%tl9253792556%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9253292539%_))))
                                  (let* ((_%val92559%_ _%hd9253692554%_)
                                         (_%rest92561%_ _%tl9253792556%_))
                                    (_%K9253592551%_
                                     _%rest92561%_
                                     _%val92559%_)))
                                (_%E9253492543%_)))
                          (if (eq? _%hd92530%_ '#!key)
                              (let* ((_%hd-rest9256392570%_ _%hd-rest92529%_)
                                     (_%E9256592574%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9256392570%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9256692580%_
                                      (lambda (_%rest92577%_ _%val92578%_)
                                        (if _%args92508%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail92509%_
                                                 _%hd-rest92529%_))
                                              (_%lp92505%_
                                               _%rest92577%_
                                               _%args92508%_
                                               _%hd-rest92529%_))
                                            (_%lp92505%_
                                             _%rest92577%_
                                             _%hd-rest92529%_
                                             _%hd-rest92529%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9256392570%_))
                                    (let ((_%hd9256792583%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9256392570%_)))
                                          (_%tl9256892585%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9256392570%_))))
                                      (let* ((_%val92588%_ _%hd9256792583%_)
                                             (_%rest92590%_ _%tl9256892585%_))
                                        (_%K9256692580%_
                                         _%rest92590%_
                                         _%val92588%_)))
                                    (_%E9256592574%_)))
                              (if (eq? _%hd92530%_ '#!rest)
                                  (if _%args92508%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92509%_
                                           _%hd-rest92529%_))
                                        (let ((__tmp92777
                                               (cons _%keys92503%_
                                                     _%args92508%_)))
                                          (declare (not safe))
                                          (##apply _%K92500%_ __tmp92777)))
                                      (let ((__tmp92778
                                             (cons _%keys92503%_
                                                   _%hd-rest92529%_)))
                                        (declare (not safe))
                                        (##apply _%K92500%_ __tmp92778)))
                                  (if _%args92508%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92509%_
                                           _%rest92507%_))
                                        (_%lp92505%_
                                         _%hd-rest92529%_
                                         _%args92508%_
                                         _%rest92507%_))
                                      (_%lp92505%_
                                       _%hd-rest92529%_
                                       _%rest92507%_
                                       _%rest92507%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9251092518%_))
                  (let ((_%hd9251592597%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9251092518%_)))
                        (_%tl9251692599%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9251092518%_))))
                    (let* ((_%hd92602%_ _%hd9251592597%_)
                           (_%hd-rest92604%_ _%tl9251692599%_))
                      (_%K9251492594%_ _%hd-rest92604%_ _%hd92602%_)))
                  (_%else9251292526%_)))))))
    (define keyword-rest
      (lambda (_%kwt92491%_ . _%drop92492%_)
        (let ((_%rest92494%_ '()))
          (let ((__tmp92779
                 (lambda (_%k92496%_ _%v92497%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k92496%_ _%drop92492%_))
                       '#!void
                       (set! _%rest92494%_
                             (cons _%k92496%_
                                   (cons _%v92497%_ _%rest92494%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt92491%_ __tmp92779))
          _%rest92494%_)))))

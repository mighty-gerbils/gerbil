(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1713000276)
  (begin
    (define make-promise
      (lambda (_%thunk92744%_)
        (if (procedure? _%thunk92744%_)
            (let ((_%thunk92748%_ _%thunk92744%_))
              (__make-promise _%thunk92748%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk92744%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk92732%_)
        (let ((_%thunk92735%_ _%thunk92732%_))
          (declare (not safe))
          (##make-delay-promise _%thunk92735%_))))
    (define call-with-parameters
      (lambda (_%thunk92717%_ . _%rest92718%_)
        (if (procedure? _%thunk92717%_)
            (let ((_%thunk92722%_ _%thunk92717%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk92722%_ _%rest92718%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk92717%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk92655%_ . _%rest92656%_)
        (let* ((_%thunk92659%_ _%thunk92655%_)
               (_%rest9266792678%_ _%rest92656%_)
               (_%E9267092682%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9266792678%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9267292698%_
                 (lambda (_%rest92693%_ _%val92694%_ _%param92695%_)
                   (let ((__tmp92770
                          (if (null? _%rest92693%_)
                              _%thunk92659%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk92659%_
                                       _%rest92693%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param92695%_
                      _%val92694%_
                      __tmp92770))))
                (_%K9267192687%_
                 (lambda () (let () (declare (not safe)) (_%thunk92659%_)))))
            (let ((_%try-match9266992690%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9266792678%_))
                         (let () (declare (not safe)) (_%thunk92659%_))
                         (_%E9267092682%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9266792678%_))
                  (let ((_%tl9267492703%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9266792678%_)))
                        (_%hd9267392701%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9266792678%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9267492703%_))
                        (let ((_%tl9267692710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9267492703%_)))
                              (_%hd9267592708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9267492703%_))))
                          (let ((_%param92706%_ _%hd9267392701%_)
                                (_%val92713%_ _%hd9267592708%_)
                                (_%rest92715%_ _%tl9267692710%_))
                            (_%K9267292698%_
                             _%rest92715%_
                             _%val92713%_
                             _%param92706%_)))
                        (_%E9267092682%_)))
                  (_%try-match9266992690%_)))))))
    (define with-unwind-protect
      (lambda (_%K92630%_ _%fini92631%_)
        (if (procedure? _%K92630%_)
            (let ((_%K92635%_ _%K92630%_))
              (if (procedure? _%fini92631%_)
                  (let ((_%fini92645%_ _%fini92631%_))
                    (__with-unwind-protect _%K92635%_ _%fini92645%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini92631%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K92630%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K92604%_ _%fini92605%_)
        (let* ((_%K92608%_ _%K92604%_)
               (_%fini92617%_ _%fini92605%_)
               (_%once92626%_ '#f)
               (__tmp92771
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once92626%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once92626%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp92771 _%K92608%_ _%fini92617%_))))
    (define keyword-dispatch
      (lambda (_%kwt92497%_ _%K92498%_ . _%all-args92499%_)
        (if _%kwt92497%_
            (if (vector? _%kwt92497%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt92497%_))
            '#!void)
        (if (procedure? _%K92498%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K92498%_))
        (let ((_%keys92501%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp92503%_ ((_%rest92505%_ _%all-args92499%_)
                            (_%args92506%_ '#f)
                            (_%tail92507%_ '#f))
            (let* ((_%rest9250892516%_ _%rest92505%_)
                   (_%else9251092524%_
                    (lambda ()
                      (if _%args92506%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail92507%_ '()))
                            (let ((__tmp92772
                                   (cons _%keys92501%_ _%args92506%_)))
                              (declare (not safe))
                              (##apply _%K92498%_ __tmp92772)))
                          (_%K92498%_ _%keys92501%_))))
                   (_%K9251292592%_
                    (lambda (_%hd-rest92527%_ _%hd92528%_)
                      (if (keyword? _%hd92528%_)
                          (let* ((_%hd-rest9253092537%_ _%hd-rest92527%_)
                                 (_%E9253292541%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9253092537%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9253392549%_
                                  (lambda (_%rest92544%_ _%val92545%_)
                                    (if _%kwt92497%_
                                        (let ((_%pos92547%_
                                               (let ((__tmp92774
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd92528%_)))
                                                     (__tmp92773
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt92497%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp92774
                                                  __tmp92773))))
                                          (if (eq? _%hd92528%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt92497%_
                                                      _%pos92547%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K92498%_
                                                     _%hd92528%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys92501%_
                                                _%hd92528%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K92498%_
                                               _%hd92528%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys92501%_
                                       _%hd92528%_
                                       _%val92545%_))
                                    (_%lp92503%_
                                     _%rest92544%_
                                     _%args92506%_
                                     _%tail92507%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9253092537%_))
                                (let ((_%hd9253492552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9253092537%_)))
                                      (_%tl9253592554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9253092537%_))))
                                  (let* ((_%val92557%_ _%hd9253492552%_)
                                         (_%rest92559%_ _%tl9253592554%_))
                                    (_%K9253392549%_
                                     _%rest92559%_
                                     _%val92557%_)))
                                (_%E9253292541%_)))
                          (if (eq? _%hd92528%_ '#!key)
                              (let* ((_%hd-rest9256192568%_ _%hd-rest92527%_)
                                     (_%E9256392572%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9256192568%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9256492578%_
                                      (lambda (_%rest92575%_ _%val92576%_)
                                        (if _%args92506%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail92507%_
                                                 _%hd-rest92527%_))
                                              (_%lp92503%_
                                               _%rest92575%_
                                               _%args92506%_
                                               _%hd-rest92527%_))
                                            (_%lp92503%_
                                             _%rest92575%_
                                             _%hd-rest92527%_
                                             _%hd-rest92527%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9256192568%_))
                                    (let ((_%hd9256592581%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9256192568%_)))
                                          (_%tl9256692583%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9256192568%_))))
                                      (let* ((_%val92586%_ _%hd9256592581%_)
                                             (_%rest92588%_ _%tl9256692583%_))
                                        (_%K9256492578%_
                                         _%rest92588%_
                                         _%val92586%_)))
                                    (_%E9256392572%_)))
                              (if (eq? _%hd92528%_ '#!rest)
                                  (if _%args92506%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92507%_
                                           _%hd-rest92527%_))
                                        (let ((__tmp92775
                                               (cons _%keys92501%_
                                                     _%args92506%_)))
                                          (declare (not safe))
                                          (##apply _%K92498%_ __tmp92775)))
                                      (let ((__tmp92776
                                             (cons _%keys92501%_
                                                   _%hd-rest92527%_)))
                                        (declare (not safe))
                                        (##apply _%K92498%_ __tmp92776)))
                                  (if _%args92506%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92507%_
                                           _%rest92505%_))
                                        (_%lp92503%_
                                         _%hd-rest92527%_
                                         _%args92506%_
                                         _%rest92505%_))
                                      (_%lp92503%_
                                       _%hd-rest92527%_
                                       _%rest92505%_
                                       _%rest92505%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9250892516%_))
                  (let ((_%hd9251392595%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9250892516%_)))
                        (_%tl9251492597%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9250892516%_))))
                    (let* ((_%hd92600%_ _%hd9251392595%_)
                           (_%hd-rest92602%_ _%tl9251492597%_))
                      (_%K9251292592%_ _%hd-rest92602%_ _%hd92600%_)))
                  (_%else9251092524%_)))))))
    (define keyword-rest
      (lambda (_%kwt92489%_ . _%drop92490%_)
        (let ((_%rest92492%_ '()))
          (let ((__tmp92777
                 (lambda (_%k92494%_ _%v92495%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k92494%_ _%drop92490%_))
                       '#!void
                       (set! _%rest92492%_
                             (cons _%k92494%_
                                   (cons _%v92495%_ _%rest92492%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt92489%_ __tmp92777))
          _%rest92492%_)))))

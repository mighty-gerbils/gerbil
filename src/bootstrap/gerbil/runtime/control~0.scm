(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712643206)
  (begin
    (define make-promise
      (lambda (_%thunk90646%_)
        (if (procedure? _%thunk90646%_)
            (let ((_%thunk90650%_ _%thunk90646%_))
              (__make-promise _%thunk90650%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk90646%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk90634%_)
        (let ((_%thunk90637%_ _%thunk90634%_))
          (declare (not safe))
          (##make-delay-promise _%thunk90637%_))))
    (define call-with-parameters
      (lambda (_%thunk90619%_ . _%rest90620%_)
        (if (procedure? _%thunk90619%_)
            (let ((_%thunk90624%_ _%thunk90619%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk90624%_ _%rest90620%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk90619%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk90557%_ . _%rest90558%_)
        (let* ((_%thunk90561%_ _%thunk90557%_)
               (_%rest9056990580%_ _%rest90558%_)
               (_%E9057290584%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9056990580%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9057490600%_
                 (lambda (_%rest90595%_ _%val90596%_ _%param90597%_)
                   (let ((__tmp90672
                          (if (null? _%rest90595%_)
                              _%thunk90561%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk90561%_
                                       _%rest90595%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param90597%_
                      _%val90596%_
                      __tmp90672))))
                (_%K9057390589%_
                 (lambda () (let () (declare (not safe)) (_%thunk90561%_)))))
            (let ((_%try-match9057190592%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9056990580%_))
                         (let () (declare (not safe)) (_%thunk90561%_))
                         (_%E9057290584%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9056990580%_))
                  (let ((_%tl9057690605%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9056990580%_)))
                        (_%hd9057590603%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9056990580%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9057690605%_))
                        (let ((_%tl9057890612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9057690605%_)))
                              (_%hd9057790610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9057690605%_))))
                          (let ((_%param90608%_ _%hd9057590603%_)
                                (_%val90615%_ _%hd9057790610%_)
                                (_%rest90617%_ _%tl9057890612%_))
                            (_%K9057490600%_
                             _%rest90617%_
                             _%val90615%_
                             _%param90608%_)))
                        (_%E9057290584%_)))
                  (_%try-match9057190592%_)))))))
    (define with-unwind-protect
      (lambda (_%K90532%_ _%fini90533%_)
        (if (procedure? _%K90532%_)
            (let ((_%K90537%_ _%K90532%_))
              (if (procedure? _%fini90533%_)
                  (let ((_%fini90547%_ _%fini90533%_))
                    (__with-unwind-protect _%K90537%_ _%fini90547%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini90533%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K90532%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K90506%_ _%fini90507%_)
        (let* ((_%K90510%_ _%K90506%_)
               (_%fini90519%_ _%fini90507%_)
               (_%once90528%_ '#f)
               (__tmp90673
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once90528%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once90528%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp90673 _%K90510%_ _%fini90519%_))))
    (define keyword-dispatch
      (lambda (_%kwt90399%_ _%K90400%_ . _%all-args90401%_)
        (if _%kwt90399%_
            (if (vector? _%kwt90399%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90399%_))
            '#!void)
        (if (procedure? _%K90400%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90400%_))
        (let ((_%keys90403%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90405%_ ((_%rest90407%_ _%all-args90401%_)
                            (_%args90408%_ '#f)
                            (_%tail90409%_ '#f))
            (let* ((_%rest9041090418%_ _%rest90407%_)
                   (_%else9041290426%_
                    (lambda ()
                      (if _%args90408%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90409%_ '()))
                            (let ((__tmp90674
                                   (cons _%keys90403%_ _%args90408%_)))
                              (declare (not safe))
                              (##apply _%K90400%_ __tmp90674)))
                          (_%K90400%_ _%keys90403%_))))
                   (_%K9041490494%_
                    (lambda (_%hd-rest90429%_ _%hd90430%_)
                      (if (keyword? _%hd90430%_)
                          (let* ((_%hd-rest9043290439%_ _%hd-rest90429%_)
                                 (_%E9043490443%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9043290439%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9043590451%_
                                  (lambda (_%rest90446%_ _%val90447%_)
                                    (if _%kwt90399%_
                                        (let ((_%pos90449%_
                                               (let ((__tmp90676
                                                      (keyword-hash
                                                       _%hd90430%_))
                                                     (__tmp90675
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt90399%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp90676
                                                  __tmp90675))))
                                          (if (eq? _%hd90430%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt90399%_
                                                      _%pos90449%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K90400%_
                                                     _%hd90430%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys90403%_
                                                _%hd90430%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K90400%_
                                               _%hd90430%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys90403%_
                                       _%hd90430%_
                                       _%val90447%_))
                                    (_%lp90405%_
                                     _%rest90446%_
                                     _%args90408%_
                                     _%tail90409%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9043290439%_))
                                (let ((_%hd9043690454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9043290439%_)))
                                      (_%tl9043790456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9043290439%_))))
                                  (let* ((_%val90459%_ _%hd9043690454%_)
                                         (_%rest90461%_ _%tl9043790456%_))
                                    (_%K9043590451%_
                                     _%rest90461%_
                                     _%val90459%_)))
                                (_%E9043490443%_)))
                          (if (eq? _%hd90430%_ '#!key)
                              (let* ((_%hd-rest9046390470%_ _%hd-rest90429%_)
                                     (_%E9046590474%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9046390470%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9046690480%_
                                      (lambda (_%rest90477%_ _%val90478%_)
                                        (if _%args90408%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail90409%_
                                                 _%hd-rest90429%_))
                                              (_%lp90405%_
                                               _%rest90477%_
                                               _%args90408%_
                                               _%hd-rest90429%_))
                                            (_%lp90405%_
                                             _%rest90477%_
                                             _%hd-rest90429%_
                                             _%hd-rest90429%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9046390470%_))
                                    (let ((_%hd9046790483%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9046390470%_)))
                                          (_%tl9046890485%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9046390470%_))))
                                      (let* ((_%val90488%_ _%hd9046790483%_)
                                             (_%rest90490%_ _%tl9046890485%_))
                                        (_%K9046690480%_
                                         _%rest90490%_
                                         _%val90488%_)))
                                    (_%E9046590474%_)))
                              (if (eq? _%hd90430%_ '#!rest)
                                  (if _%args90408%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail90409%_
                                           _%hd-rest90429%_))
                                        (let ((__tmp90677
                                               (cons _%keys90403%_
                                                     _%args90408%_)))
                                          (declare (not safe))
                                          (##apply _%K90400%_ __tmp90677)))
                                      (let ((__tmp90678
                                             (cons _%keys90403%_
                                                   _%hd-rest90429%_)))
                                        (declare (not safe))
                                        (##apply _%K90400%_ __tmp90678)))
                                  (if _%args90408%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail90409%_
                                           _%rest90407%_))
                                        (_%lp90405%_
                                         _%hd-rest90429%_
                                         _%args90408%_
                                         _%rest90407%_))
                                      (_%lp90405%_
                                       _%hd-rest90429%_
                                       _%rest90407%_
                                       _%rest90407%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9041090418%_))
                  (let ((_%hd9041590497%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9041090418%_)))
                        (_%tl9041690499%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9041090418%_))))
                    (let* ((_%hd90502%_ _%hd9041590497%_)
                           (_%hd-rest90504%_ _%tl9041690499%_))
                      (_%K9041490494%_ _%hd-rest90504%_ _%hd90502%_)))
                  (_%else9041290426%_)))))))
    (define keyword-rest
      (lambda (_%kwt90391%_ . _%drop90392%_)
        (let ((_%rest90394%_ '()))
          (let ((__tmp90679
                 (lambda (_%k90396%_ _%v90397%_)
                   (if (memq _%k90396%_ _%drop90392%_)
                       '#!void
                       (set! _%rest90394%_
                             (cons _%k90396%_
                                   (cons _%v90397%_ _%rest90394%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90391%_ __tmp90679))
          _%rest90394%_)))))

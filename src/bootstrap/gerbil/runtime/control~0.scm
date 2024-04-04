(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712256085)
  (begin
    (define make-promise
      (lambda (_%thunk91012%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk91012%_))
              (let ((_%thunk91016%_ _%thunk91012%_))
                (declare (not safe))
                (__make-promise _%thunk91016%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@11.21-11.26"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk91012%_)
                '#!void)))))
    (define __make-promise
      (lambda (_%thunk91000%_)
        (let ((_%thunk91003%_ _%thunk91000%_))
          (declare (not safe))
          (##make-delay-promise _%thunk91003%_))))
    (define call-with-parameters
      (lambda (_%thunk90985%_ . _%rest90986%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90985%_))
              (let ((_%thunk90990%_ _%thunk90985%_))
                (declare (not safe))
                (##apply __call-with-parameters _%thunk90990%_ _%rest90986%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@15.29-15.34"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk90985%_)
                '#!void)))))
    (define __call-with-parameters
      (lambda (_%thunk90923%_ . _%rest90924%_)
        (let ((_%thunk90927%_ _%thunk90923%_))
          (let* ((_%rest9093590946%_ _%rest90924%_)
                 (_%E9093890950%_
                  (lambda ()
                    (error '"No clause matching"
                           _%rest9093590946%_
                           '([param val . rest])
                           '([]))
                    '#!void)))
            (let ((_%K9094090966%_
                   (lambda (_%rest90961%_ _%val90962%_ _%param90963%_)
                     (let ((__tmp91038
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest90961%_))
                                _%thunk90927%_
                                (lambda ()
                                  (apply call-with-parameters
                                         _%thunk90927%_
                                         _%rest90961%_)))))
                       (declare (not safe))
                       (##parameterize1
                        _%param90963%_
                        _%val90962%_
                        __tmp91038))))
                  (_%K9093990955%_
                   (lambda () (let () (declare (not safe)) (_%thunk90927%_)))))
              (let ((_%try-match9093790958%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest9093590946%_))
                           (let () (declare (not safe)) (_%thunk90927%_))
                           (let () (declare (not safe)) (_%E9093890950%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest9093590946%_))
                    (let ((_%tl9094290971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9093590946%_)))
                          (_%hd9094190969%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9093590946%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl9094290971%_))
                          (let ((_%tl9094490978%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl9094290971%_)))
                                (_%hd9094390976%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl9094290971%_))))
                            (let ((_%param90974%_ _%hd9094190969%_)
                                  (_%val90981%_ _%hd9094390976%_)
                                  (_%rest90983%_ _%tl9094490978%_))
                              (let ()
                                (declare (not safe))
                                (_%K9094090966%_
                                 _%rest90983%_
                                 _%val90981%_
                                 _%param90974%_))))
                          (let () (declare (not safe)) (_%E9093890950%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match9093790958%_)))))))))
    (define with-unwind-protect
      (lambda (_%K90898%_ _%fini90899%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%K90898%_))
              (let ((_%K90903%_ _%K90898%_))
                (if (let () (declare (not safe)) (procedure? _%fini90899%_))
                    (let ((_%fini90913%_ _%fini90899%_))
                      (declare (not safe))
                      (__with-unwind-protect _%K90903%_ _%fini90913%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                       'contract:
                       'procedure?
                       'value:
                       _%fini90899%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@23.28-23.29"
                 'contract:
                 'procedure?
                 'value:
                 _%K90898%_)
                '#!void)))))
    (define __with-unwind-protect
      (lambda (_%K90872%_ _%fini90873%_)
        (let ()
          (let* ((_%K90876%_ _%K90872%_) (_%fini90885%_ _%fini90873%_))
            (let* ((_%once90894%_ '#f)
                   (__tmp91039
                    (lambda ()
                      (declare (not interrupts-enabled))
                      (if _%once90894%_
                          (error '"Cannot re-enter unwind protected block")
                          (set! _%once90894%_ '#t)))))
              (declare (not safe))
              (##dynamic-wind __tmp91039 _%K90876%_ _%fini90885%_))))))
    (define keyword-dispatch
      (lambda (_%kwt90765%_ _%K90766%_ . _%all-args90767%_)
        (if _%kwt90765%_
            (if (let () (declare (not safe)) (vector? _%kwt90765%_))
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90765%_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _%K90766%_))
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90766%_))
        (let ((_%keys90769%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90771%_ ((_%rest90773%_ _%all-args90767%_)
                            (_%args90774%_ '#f)
                            (_%tail90775%_ '#f))
            (let* ((_%rest9077690784%_ _%rest90773%_)
                   (_%else9077890792%_
                    (lambda ()
                      (if _%args90774%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90775%_ '()))
                            (let ((__tmp91040
                                   (cons _%keys90769%_ _%args90774%_)))
                              (declare (not safe))
                              (##apply _%K90766%_ __tmp91040)))
                          (_%K90766%_ _%keys90769%_))))
                   (_%K9078090860%_
                    (lambda (_%hd-rest90795%_ _%hd90796%_)
                      (if (let () (declare (not safe)) (keyword? _%hd90796%_))
                          (let ()
                            (let* ((_%hd-rest9079890805%_ _%hd-rest90795%_)
                                   (_%E9080090809%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%hd-rest9079890805%_
                                             '([val . rest]))
                                      '#!void))
                                   (_%K9080190817%_
                                    (lambda (_%rest90812%_ _%val90813%_)
                                      (if _%kwt90765%_
                                          (let ((_%pos90815%_
                                                 (let ((__tmp91042
                                                        (keyword-hash
                                                         _%hd90796%_))
                                                       (__tmp91041
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-length
                                                           _%kwt90765%_))))
                                                   (declare (not safe))
                                                   (##fxmodulo
                                                    __tmp91042
                                                    __tmp91041))))
                                            (if (eq? _%hd90796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%kwt90765%_
                                                        _%pos90815%_)))
                                                '#!void
                                                (error '"Unexpected keyword argument"
                                                       _%K90766%_
                                                       _%hd90796%_)))
                                          '#!void)
                                      (if (eq? (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%keys90769%_
                                                  _%hd90796%_
                                                  absent-value))
                                               absent-value)
                                          '#!void
                                          (error '"Duplicate keyword argument"
                                                 _%K90766%_
                                                 _%hd90796%_))
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%keys90769%_
                                         _%hd90796%_
                                         _%val90813%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp90771%_
                                         _%rest90812%_
                                         _%args90774%_
                                         _%tail90775%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd-rest9079890805%_))
                                  (let ((_%hd9080290820%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd-rest9079890805%_)))
                                        (_%tl9080390822%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd-rest9079890805%_))))
                                    (let* ((_%val90825%_ _%hd9080290820%_)
                                           (_%rest90827%_ _%tl9080390822%_))
                                      (declare (not safe))
                                      (_%K9080190817%_
                                       _%rest90827%_
                                       _%val90825%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%E9080090809%_)))))
                          (if (eq? _%hd90796%_ '#!key)
                              (let ()
                                (let* ((_%hd-rest9082990836%_ _%hd-rest90795%_)
                                       (_%E9083190840%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%hd-rest9082990836%_
                                                 '([val . rest]))
                                          '#!void))
                                       (_%K9083290846%_
                                        (lambda (_%rest90843%_ _%val90844%_)
                                          (if _%args90774%_
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##set-cdr!
                                                   _%tail90775%_
                                                   _%hd-rest90795%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp90771%_
                                                   _%rest90843%_
                                                   _%args90774%_
                                                   _%hd-rest90795%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%lp90771%_
                                                 _%rest90843%_
                                                 _%hd-rest90795%_
                                                 _%hd-rest90795%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%hd-rest9082990836%_))
                                      (let ((_%hd9083390849%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%hd-rest9082990836%_)))
                                            (_%tl9083490851%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%hd-rest9082990836%_))))
                                        (let* ((_%val90854%_ _%hd9083390849%_)
                                               (_%rest90856%_
                                                _%tl9083490851%_))
                                          (declare (not safe))
                                          (_%K9083290846%_
                                           _%rest90856%_
                                           _%val90854%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E9083190840%_)))))
                              (if (eq? _%hd90796%_ '#!rest)
                                  (let ()
                                    (if _%args90774%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90775%_
                                             _%hd-rest90795%_))
                                          (let ((__tmp91043
                                                 (cons _%keys90769%_
                                                       _%args90774%_)))
                                            (declare (not safe))
                                            (##apply _%K90766%_ __tmp91043)))
                                        (let ((__tmp91044
                                               (cons _%keys90769%_
                                                     _%hd-rest90795%_)))
                                          (declare (not safe))
                                          (##apply _%K90766%_ __tmp91044))))
                                  (let ()
                                    (if _%args90774%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90775%_
                                             _%rest90773%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp90771%_
                                             _%hd-rest90795%_
                                             _%args90774%_
                                             _%rest90773%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp90771%_
                                           _%hd-rest90795%_
                                           _%rest90773%_
                                           _%rest90773%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9077690784%_))
                  (let ((_%hd9078190863%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9077690784%_)))
                        (_%tl9078290865%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9077690784%_))))
                    (let* ((_%hd90868%_ _%hd9078190863%_)
                           (_%hd-rest90870%_ _%tl9078290865%_))
                      (declare (not safe))
                      (_%K9078090860%_ _%hd-rest90870%_ _%hd90868%_)))
                  (let () (declare (not safe)) (_%else9077890792%_))))))))
    (define keyword-rest
      (lambda (_%kwt90757%_ . _%drop90758%_)
        (let ((_%rest90760%_ '()))
          (let ((__tmp91045
                 (lambda (_%k90762%_ _%v90763%_)
                   (if (memq _%k90762%_ _%drop90758%_)
                       '#!void
                       (set! _%rest90760%_
                             (let ((__tmp91046
                                    (let ()
                                      (declare (not safe))
                                      (cons _%v90763%_ _%rest90760%_))))
                               (declare (not safe))
                               (cons _%k90762%_ __tmp91046)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90757%_ __tmp91045))
          _%rest90760%_)))))

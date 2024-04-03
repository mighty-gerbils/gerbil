(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712124233)
  (begin
    (define make-promise
      (lambda (_%thunk90457%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90457%_))
              (let ()
                (let ((_%thunk90461%_ _%thunk90457%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-promise _%thunk90461%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk90457%_)))))
    (define __make-promise
      (lambda (_%thunk90445%_)
        (let ()
          (let ((_%thunk90448%_ _%thunk90445%_))
            (let ()
              (let ()
                (declare (not safe))
                (##make-delay-promise _%thunk90448%_)))))))
    (define call-with-parameters
      (lambda (_%thunk90430%_ . _%rest90431%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90430%_))
              (let ()
                (let ((_%thunk90435%_ _%thunk90430%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __call-with-parameters
                               _%thunk90435%_
                               _%rest90431%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk90430%_)))))
    (define __call-with-parameters
      (lambda (_%thunk90368%_ . _%rest90369%_)
        (let ()
          (let ((_%thunk90372%_ _%thunk90368%_))
            (let ()
              (let* ((_%rest9038090391%_ _%rest90369%_)
                     (_%E9038390395%_
                      (lambda ()
                        (error '"No clause matching"
                               _%rest9038090391%_
                               '([param val . rest])
                               '([]))
                        '#!void)))
                (let ((_%K9038590411%_
                       (lambda (_%rest90406%_ _%val90407%_ _%param90408%_)
                         (let ((__tmp90483
                                (if (let ()
                                      (declare (not safe))
                                      (null? _%rest90406%_))
                                    _%thunk90372%_
                                    (lambda ()
                                      (apply call-with-parameters
                                             _%thunk90372%_
                                             _%rest90406%_)))))
                           (declare (not safe))
                           (##parameterize1
                            _%param90408%_
                            _%val90407%_
                            __tmp90483))))
                      (_%K9038490400%_
                       (lambda ()
                         (let () (declare (not safe)) (_%thunk90372%_)))))
                  (let ((_%try-match9038290403%_
                         (lambda ()
                           (if (let ()
                                 (declare (not safe))
                                 (##null? _%rest9038090391%_))
                               (let () (declare (not safe)) (_%thunk90372%_))
                               (let ()
                                 (declare (not safe))
                                 (_%E9038390395%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest9038090391%_))
                        (let ((_%tl9038790416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest9038090391%_)))
                              (_%hd9038690414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest9038090391%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%tl9038790416%_))
                              (let ((_%tl9038990423%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%tl9038790416%_)))
                                    (_%hd9038890421%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%tl9038790416%_))))
                                (let ((_%param90419%_ _%hd9038690414%_)
                                      (_%val90426%_ _%hd9038890421%_)
                                      (_%rest90428%_ _%tl9038990423%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K9038590411%_
                                     _%rest90428%_
                                     _%val90426%_
                                     _%param90419%_))))
                              (let () (declare (not safe)) (_%E9038390395%_))))
                        (let ()
                          (declare (not safe))
                          (_%try-match9038290403%_)))))))))))
    (define with-unwind-protect
      (lambda (_%K90343%_ _%fini90344%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%K90343%_))
              (let ()
                (let ((_%K90348%_ _%K90343%_))
                  (if (let () (declare (not safe)) (procedure? _%fini90344%_))
                      (let ()
                        (let ((_%fini90358%_ _%fini90344%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-unwind-protect
                               _%K90348%_
                               _%fini90358%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                       'contract:
                       'procedure?
                       'value:
                       _%fini90344%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K90343%_)))))
    (define __with-unwind-protect
      (lambda (_%K90317%_ _%fini90318%_)
        (let ()
          (let ((_%K90321%_ _%K90317%_))
            (let ((_%fini90330%_ _%fini90318%_))
              (let ()
                (let* ((_%once90339%_ '#f)
                       (__tmp90484
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (if _%once90339%_
                              (error '"Cannot re-enter unwind protected block")
                              (set! _%once90339%_ '#t)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp90484 _%K90321%_ _%fini90330%_))))))))
    (define keyword-dispatch
      (lambda (_%kwt90210%_ _%K90211%_ . _%all-args90212%_)
        (if _%kwt90210%_
            (if (let () (declare (not safe)) (vector? _%kwt90210%_))
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90210%_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _%K90211%_))
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90211%_))
        (let ((_%keys90214%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90216%_ ((_%rest90218%_ _%all-args90212%_)
                            (_%args90219%_ '#f)
                            (_%tail90220%_ '#f))
            (let* ((_%rest9022190229%_ _%rest90218%_)
                   (_%else9022390237%_
                    (lambda ()
                      (if _%args90219%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90220%_ '()))
                            (let ((__tmp90485
                                   (cons _%keys90214%_ _%args90219%_)))
                              (declare (not safe))
                              (##apply _%K90211%_ __tmp90485)))
                          (_%K90211%_ _%keys90214%_))))
                   (_%K9022590305%_
                    (lambda (_%hd-rest90240%_ _%hd90241%_)
                      (if (let () (declare (not safe)) (keyword? _%hd90241%_))
                          (let ()
                            (let* ((_%hd-rest9024390250%_ _%hd-rest90240%_)
                                   (_%E9024590254%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%hd-rest9024390250%_
                                             '([val . rest]))
                                      '#!void))
                                   (_%K9024690262%_
                                    (lambda (_%rest90257%_ _%val90258%_)
                                      (if _%kwt90210%_
                                          (let ((_%pos90260%_
                                                 (let ((__tmp90487
                                                        (keyword-hash
                                                         _%hd90241%_))
                                                       (__tmp90486
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-length
                                                           _%kwt90210%_))))
                                                   (declare (not safe))
                                                   (##fxmodulo
                                                    __tmp90487
                                                    __tmp90486))))
                                            (if (eq? _%hd90241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%kwt90210%_
                                                        _%pos90260%_)))
                                                '#!void
                                                (error '"Unexpected keyword argument"
                                                       _%K90211%_
                                                       _%hd90241%_)))
                                          '#!void)
                                      (if (eq? (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%keys90214%_
                                                  _%hd90241%_
                                                  absent-value))
                                               absent-value)
                                          '#!void
                                          (error '"Duplicate keyword argument"
                                                 _%K90211%_
                                                 _%hd90241%_))
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%keys90214%_
                                         _%hd90241%_
                                         _%val90258%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp90216%_
                                         _%rest90257%_
                                         _%args90219%_
                                         _%tail90220%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd-rest9024390250%_))
                                  (let ((_%hd9024790265%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd-rest9024390250%_)))
                                        (_%tl9024890267%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd-rest9024390250%_))))
                                    (let* ((_%val90270%_ _%hd9024790265%_)
                                           (_%rest90272%_ _%tl9024890267%_))
                                      (declare (not safe))
                                      (_%K9024690262%_
                                       _%rest90272%_
                                       _%val90270%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%E9024590254%_)))))
                          (if (eq? _%hd90241%_ '#!key)
                              (let ()
                                (let* ((_%hd-rest9027490281%_ _%hd-rest90240%_)
                                       (_%E9027690285%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%hd-rest9027490281%_
                                                 '([val . rest]))
                                          '#!void))
                                       (_%K9027790291%_
                                        (lambda (_%rest90288%_ _%val90289%_)
                                          (if _%args90219%_
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##set-cdr!
                                                   _%tail90220%_
                                                   _%hd-rest90240%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp90216%_
                                                   _%rest90288%_
                                                   _%args90219%_
                                                   _%hd-rest90240%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%lp90216%_
                                                 _%rest90288%_
                                                 _%hd-rest90240%_
                                                 _%hd-rest90240%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%hd-rest9027490281%_))
                                      (let ((_%hd9027890294%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%hd-rest9027490281%_)))
                                            (_%tl9027990296%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%hd-rest9027490281%_))))
                                        (let* ((_%val90299%_ _%hd9027890294%_)
                                               (_%rest90301%_
                                                _%tl9027990296%_))
                                          (declare (not safe))
                                          (_%K9027790291%_
                                           _%rest90301%_
                                           _%val90299%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E9027690285%_)))))
                              (if (eq? _%hd90241%_ '#!rest)
                                  (let ()
                                    (if _%args90219%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90220%_
                                             _%hd-rest90240%_))
                                          (let ((__tmp90488
                                                 (cons _%keys90214%_
                                                       _%args90219%_)))
                                            (declare (not safe))
                                            (##apply _%K90211%_ __tmp90488)))
                                        (let ((__tmp90489
                                               (cons _%keys90214%_
                                                     _%hd-rest90240%_)))
                                          (declare (not safe))
                                          (##apply _%K90211%_ __tmp90489))))
                                  (let ()
                                    (if _%args90219%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90220%_
                                             _%rest90218%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp90216%_
                                             _%hd-rest90240%_
                                             _%args90219%_
                                             _%rest90218%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp90216%_
                                           _%hd-rest90240%_
                                           _%rest90218%_
                                           _%rest90218%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9022190229%_))
                  (let ((_%hd9022690308%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9022190229%_)))
                        (_%tl9022790310%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9022190229%_))))
                    (let* ((_%hd90313%_ _%hd9022690308%_)
                           (_%hd-rest90315%_ _%tl9022790310%_))
                      (declare (not safe))
                      (_%K9022590305%_ _%hd-rest90315%_ _%hd90313%_)))
                  (let () (declare (not safe)) (_%else9022390237%_))))))))
    (define keyword-rest
      (lambda (_%kwt90202%_ . _%drop90203%_)
        (let ((_%rest90205%_ '()))
          (let ((__tmp90490
                 (lambda (_%k90207%_ _%v90208%_)
                   (if (memq _%k90207%_ _%drop90203%_)
                       '#!void
                       (set! _%rest90205%_
                             (let ((__tmp90491
                                    (let ()
                                      (declare (not safe))
                                      (cons _%v90208%_ _%rest90205%_))))
                               (declare (not safe))
                               (cons _%k90207%_ __tmp90491)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90202%_ __tmp90490))
          _%rest90205%_)))))

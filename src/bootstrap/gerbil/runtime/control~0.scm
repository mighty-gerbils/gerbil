(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712147676)
  (begin
    (define make-promise
      (lambda (_%thunk90439%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90439%_))
              (let ((_%thunk90443%_ _%thunk90439%_))
                (declare (not safe))
                (__make-promise _%thunk90443%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@11.21-11.26"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk90439%_)
                '#!void)))))
    (define __make-promise
      (lambda (_%thunk90427%_)
        (let ((_%thunk90430%_ _%thunk90427%_))
          (declare (not safe))
          (##make-delay-promise _%thunk90430%_))))
    (define call-with-parameters
      (lambda (_%thunk90412%_ . _%rest90413%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90412%_))
              (let ((_%thunk90417%_ _%thunk90412%_))
                (declare (not safe))
                (##apply __call-with-parameters _%thunk90417%_ _%rest90413%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@15.29-15.34"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk90412%_)
                '#!void)))))
    (define __call-with-parameters
      (lambda (_%thunk90350%_ . _%rest90351%_)
        (let ((_%thunk90354%_ _%thunk90350%_))
          (let* ((_%rest9036290373%_ _%rest90351%_)
                 (_%E9036590377%_
                  (lambda ()
                    (error '"No clause matching"
                           _%rest9036290373%_
                           '([param val . rest])
                           '([]))
                    '#!void)))
            (let ((_%K9036790393%_
                   (lambda (_%rest90388%_ _%val90389%_ _%param90390%_)
                     (let ((__tmp90465
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest90388%_))
                                _%thunk90354%_
                                (lambda ()
                                  (apply call-with-parameters
                                         _%thunk90354%_
                                         _%rest90388%_)))))
                       (declare (not safe))
                       (##parameterize1
                        _%param90390%_
                        _%val90389%_
                        __tmp90465))))
                  (_%K9036690382%_
                   (lambda () (let () (declare (not safe)) (_%thunk90354%_)))))
              (let ((_%try-match9036490385%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest9036290373%_))
                           (let () (declare (not safe)) (_%thunk90354%_))
                           (let () (declare (not safe)) (_%E9036590377%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest9036290373%_))
                    (let ((_%tl9036990398%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9036290373%_)))
                          (_%hd9036890396%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9036290373%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl9036990398%_))
                          (let ((_%tl9037190405%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl9036990398%_)))
                                (_%hd9037090403%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl9036990398%_))))
                            (let ((_%param90401%_ _%hd9036890396%_)
                                  (_%val90408%_ _%hd9037090403%_)
                                  (_%rest90410%_ _%tl9037190405%_))
                              (let ()
                                (declare (not safe))
                                (_%K9036790393%_
                                 _%rest90410%_
                                 _%val90408%_
                                 _%param90401%_))))
                          (let () (declare (not safe)) (_%E9036590377%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match9036490385%_)))))))))
    (define with-unwind-protect
      (lambda (_%K90325%_ _%fini90326%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%K90325%_))
              (let ((_%K90330%_ _%K90325%_))
                (if (let () (declare (not safe)) (procedure? _%fini90326%_))
                    (let ((_%fini90340%_ _%fini90326%_))
                      (declare (not safe))
                      (__with-unwind-protect _%K90330%_ _%fini90340%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                       'contract:
                       'procedure?
                       'value:
                       _%fini90326%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@23.28-23.29"
                 'contract:
                 'procedure?
                 'value:
                 _%K90325%_)
                '#!void)))))
    (define __with-unwind-protect
      (lambda (_%K90299%_ _%fini90300%_)
        (let ()
          (let* ((_%K90303%_ _%K90299%_) (_%fini90312%_ _%fini90300%_))
            (let* ((_%once90321%_ '#f)
                   (__tmp90466
                    (lambda ()
                      (declare (not interrupts-enabled))
                      (if _%once90321%_
                          (error '"Cannot re-enter unwind protected block")
                          (set! _%once90321%_ '#t)))))
              (declare (not safe))
              (##dynamic-wind __tmp90466 _%K90303%_ _%fini90312%_))))))
    (define keyword-dispatch
      (lambda (_%kwt90192%_ _%K90193%_ . _%all-args90194%_)
        (if _%kwt90192%_
            (if (let () (declare (not safe)) (vector? _%kwt90192%_))
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90192%_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _%K90193%_))
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90193%_))
        (let ((_%keys90196%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90198%_ ((_%rest90200%_ _%all-args90194%_)
                            (_%args90201%_ '#f)
                            (_%tail90202%_ '#f))
            (let* ((_%rest9020390211%_ _%rest90200%_)
                   (_%else9020590219%_
                    (lambda ()
                      (if _%args90201%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90202%_ '()))
                            (let ((__tmp90467
                                   (cons _%keys90196%_ _%args90201%_)))
                              (declare (not safe))
                              (##apply _%K90193%_ __tmp90467)))
                          (_%K90193%_ _%keys90196%_))))
                   (_%K9020790287%_
                    (lambda (_%hd-rest90222%_ _%hd90223%_)
                      (if (let () (declare (not safe)) (keyword? _%hd90223%_))
                          (let ()
                            (let* ((_%hd-rest9022590232%_ _%hd-rest90222%_)
                                   (_%E9022790236%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%hd-rest9022590232%_
                                             '([val . rest]))
                                      '#!void))
                                   (_%K9022890244%_
                                    (lambda (_%rest90239%_ _%val90240%_)
                                      (if _%kwt90192%_
                                          (let ((_%pos90242%_
                                                 (let ((__tmp90469
                                                        (keyword-hash
                                                         _%hd90223%_))
                                                       (__tmp90468
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-length
                                                           _%kwt90192%_))))
                                                   (declare (not safe))
                                                   (##fxmodulo
                                                    __tmp90469
                                                    __tmp90468))))
                                            (if (eq? _%hd90223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%kwt90192%_
                                                        _%pos90242%_)))
                                                '#!void
                                                (error '"Unexpected keyword argument"
                                                       _%K90193%_
                                                       _%hd90223%_)))
                                          '#!void)
                                      (if (eq? (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%keys90196%_
                                                  _%hd90223%_
                                                  absent-value))
                                               absent-value)
                                          '#!void
                                          (error '"Duplicate keyword argument"
                                                 _%K90193%_
                                                 _%hd90223%_))
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%keys90196%_
                                         _%hd90223%_
                                         _%val90240%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp90198%_
                                         _%rest90239%_
                                         _%args90201%_
                                         _%tail90202%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd-rest9022590232%_))
                                  (let ((_%hd9022990247%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd-rest9022590232%_)))
                                        (_%tl9023090249%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd-rest9022590232%_))))
                                    (let* ((_%val90252%_ _%hd9022990247%_)
                                           (_%rest90254%_ _%tl9023090249%_))
                                      (declare (not safe))
                                      (_%K9022890244%_
                                       _%rest90254%_
                                       _%val90252%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%E9022790236%_)))))
                          (if (eq? _%hd90223%_ '#!key)
                              (let ()
                                (let* ((_%hd-rest9025690263%_ _%hd-rest90222%_)
                                       (_%E9025890267%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%hd-rest9025690263%_
                                                 '([val . rest]))
                                          '#!void))
                                       (_%K9025990273%_
                                        (lambda (_%rest90270%_ _%val90271%_)
                                          (if _%args90201%_
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##set-cdr!
                                                   _%tail90202%_
                                                   _%hd-rest90222%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp90198%_
                                                   _%rest90270%_
                                                   _%args90201%_
                                                   _%hd-rest90222%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%lp90198%_
                                                 _%rest90270%_
                                                 _%hd-rest90222%_
                                                 _%hd-rest90222%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%hd-rest9025690263%_))
                                      (let ((_%hd9026090276%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%hd-rest9025690263%_)))
                                            (_%tl9026190278%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%hd-rest9025690263%_))))
                                        (let* ((_%val90281%_ _%hd9026090276%_)
                                               (_%rest90283%_
                                                _%tl9026190278%_))
                                          (declare (not safe))
                                          (_%K9025990273%_
                                           _%rest90283%_
                                           _%val90281%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E9025890267%_)))))
                              (if (eq? _%hd90223%_ '#!rest)
                                  (let ()
                                    (if _%args90201%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90202%_
                                             _%hd-rest90222%_))
                                          (let ((__tmp90470
                                                 (cons _%keys90196%_
                                                       _%args90201%_)))
                                            (declare (not safe))
                                            (##apply _%K90193%_ __tmp90470)))
                                        (let ((__tmp90471
                                               (cons _%keys90196%_
                                                     _%hd-rest90222%_)))
                                          (declare (not safe))
                                          (##apply _%K90193%_ __tmp90471))))
                                  (let ()
                                    (if _%args90201%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90202%_
                                             _%rest90200%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp90198%_
                                             _%hd-rest90222%_
                                             _%args90201%_
                                             _%rest90200%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp90198%_
                                           _%hd-rest90222%_
                                           _%rest90200%_
                                           _%rest90200%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9020390211%_))
                  (let ((_%hd9020890290%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9020390211%_)))
                        (_%tl9020990292%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9020390211%_))))
                    (let* ((_%hd90295%_ _%hd9020890290%_)
                           (_%hd-rest90297%_ _%tl9020990292%_))
                      (declare (not safe))
                      (_%K9020790287%_ _%hd-rest90297%_ _%hd90295%_)))
                  (let () (declare (not safe)) (_%else9020590219%_))))))))
    (define keyword-rest
      (lambda (_%kwt90184%_ . _%drop90185%_)
        (let ((_%rest90187%_ '()))
          (let ((__tmp90472
                 (lambda (_%k90189%_ _%v90190%_)
                   (if (memq _%k90189%_ _%drop90185%_)
                       '#!void
                       (set! _%rest90187%_
                             (let ((__tmp90473
                                    (let ()
                                      (declare (not safe))
                                      (cons _%v90190%_ _%rest90187%_))))
                               (declare (not safe))
                               (cons _%k90189%_ __tmp90473)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90184%_ __tmp90472))
          _%rest90187%_)))))

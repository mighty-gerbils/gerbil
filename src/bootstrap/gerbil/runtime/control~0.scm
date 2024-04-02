(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712093475)
  (begin
    (define make-promise
      (lambda (_%thunk90388%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90388%_))
              (let ()
                (let ((_%thunk90392%_ _%thunk90388%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-promise _%thunk90392%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk90388%_)))))
    (define __make-promise
      (lambda (_%thunk90376%_)
        (let ()
          (let ((_%thunk90379%_ _%thunk90376%_))
            (let ()
              (let ()
                (declare (not safe))
                (##make-delay-promise _%thunk90379%_)))))))
    (define call-with-parameters
      (lambda (_%thunk90361%_ . _%rest90362%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90361%_))
              (let ()
                (let ((_%thunk90366%_ _%thunk90361%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __call-with-parameters
                               _%thunk90366%_
                               _%rest90362%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk90361%_)))))
    (define __call-with-parameters
      (lambda (_%thunk90299%_ . _%rest90300%_)
        (let ()
          (let ((_%thunk90303%_ _%thunk90299%_))
            (let ()
              (let* ((_%rest9031190322%_ _%rest90300%_)
                     (_%E9031490326%_
                      (lambda ()
                        (error '"No clause matching"
                               _%rest9031190322%_
                               '([param val . rest])
                               '([]))
                        '#!void)))
                (let ((_%K9031690342%_
                       (lambda (_%rest90337%_ _%val90338%_ _%param90339%_)
                         (let ((__tmp90414
                                (if (let ()
                                      (declare (not safe))
                                      (null? _%rest90337%_))
                                    _%thunk90303%_
                                    (lambda ()
                                      (apply call-with-parameters
                                             _%thunk90303%_
                                             _%rest90337%_)))))
                           (declare (not safe))
                           (##parameterize1
                            _%param90339%_
                            _%val90338%_
                            __tmp90414))))
                      (_%K9031590331%_
                       (lambda ()
                         (let () (declare (not safe)) (_%thunk90303%_)))))
                  (let ((_%try-match9031390334%_
                         (lambda ()
                           (if (let ()
                                 (declare (not safe))
                                 (##null? _%rest9031190322%_))
                               (let () (declare (not safe)) (_%thunk90303%_))
                               (let ()
                                 (declare (not safe))
                                 (_%E9031490326%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest9031190322%_))
                        (let ((_%tl9031890347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest9031190322%_)))
                              (_%hd9031790345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest9031190322%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%tl9031890347%_))
                              (let ((_%tl9032090354%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%tl9031890347%_)))
                                    (_%hd9031990352%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%tl9031890347%_))))
                                (let ((_%param90350%_ _%hd9031790345%_)
                                      (_%val90357%_ _%hd9031990352%_)
                                      (_%rest90359%_ _%tl9032090354%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K9031690342%_
                                     _%rest90359%_
                                     _%val90357%_
                                     _%param90350%_))))
                              (let () (declare (not safe)) (_%E9031490326%_))))
                        (let ()
                          (declare (not safe))
                          (_%try-match9031390334%_)))))))))))
    (define with-unwind-protect
      (lambda (_%K90274%_ _%fini90275%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%K90274%_))
              (let ()
                (let ((_%K90279%_ _%K90274%_))
                  (if (let () (declare (not safe)) (procedure? _%fini90275%_))
                      (let ()
                        (let ((_%fini90289%_ _%fini90275%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-unwind-protect
                               _%K90279%_
                               _%fini90289%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                       'contract:
                       'procedure?
                       'value:
                       _%fini90275%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K90274%_)))))
    (define __with-unwind-protect
      (lambda (_%K90248%_ _%fini90249%_)
        (let ()
          (let ((_%K90252%_ _%K90248%_))
            (let ((_%fini90261%_ _%fini90249%_))
              (let ()
                (let* ((_%once90270%_ '#f)
                       (__tmp90415
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (if _%once90270%_
                              (error '"Cannot re-enter unwind protected block")
                              (set! _%once90270%_ '#t)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp90415 _%K90252%_ _%fini90261%_))))))))
    (define keyword-dispatch
      (lambda (_%kwt90141%_ _%K90142%_ . _%all-args90143%_)
        (if _%kwt90141%_
            (if (let () (declare (not safe)) (vector? _%kwt90141%_))
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90141%_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _%K90142%_))
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90142%_))
        (let ((_%keys90145%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90147%_ ((_%rest90149%_ _%all-args90143%_)
                            (_%args90150%_ '#f)
                            (_%tail90151%_ '#f))
            (let* ((_%rest9015290160%_ _%rest90149%_)
                   (_%else9015490168%_
                    (lambda ()
                      (if _%args90150%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90151%_ '()))
                            (let ((__tmp90416
                                   (cons _%keys90145%_ _%args90150%_)))
                              (declare (not safe))
                              (##apply _%K90142%_ __tmp90416)))
                          (_%K90142%_ _%keys90145%_))))
                   (_%K9015690236%_
                    (lambda (_%hd-rest90171%_ _%hd90172%_)
                      (if (let () (declare (not safe)) (keyword? _%hd90172%_))
                          (let ()
                            (let* ((_%hd-rest9017490181%_ _%hd-rest90171%_)
                                   (_%E9017690185%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%hd-rest9017490181%_
                                             '([val . rest]))
                                      '#!void))
                                   (_%K9017790193%_
                                    (lambda (_%rest90188%_ _%val90189%_)
                                      (if _%kwt90141%_
                                          (let ((_%pos90191%_
                                                 (let ((__tmp90418
                                                        (keyword-hash
                                                         _%hd90172%_))
                                                       (__tmp90417
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-length
                                                           _%kwt90141%_))))
                                                   (declare (not safe))
                                                   (##fxmodulo
                                                    __tmp90418
                                                    __tmp90417))))
                                            (if (eq? _%hd90172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%kwt90141%_
                                                        _%pos90191%_)))
                                                '#!void
                                                (error '"Unexpected keyword argument"
                                                       _%K90142%_
                                                       _%hd90172%_)))
                                          '#!void)
                                      (if (eq? (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%keys90145%_
                                                  _%hd90172%_
                                                  absent-value))
                                               absent-value)
                                          '#!void
                                          (error '"Duplicate keyword argument"
                                                 _%K90142%_
                                                 _%hd90172%_))
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%keys90145%_
                                         _%hd90172%_
                                         _%val90189%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp90147%_
                                         _%rest90188%_
                                         _%args90150%_
                                         _%tail90151%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd-rest9017490181%_))
                                  (let ((_%hd9017890196%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd-rest9017490181%_)))
                                        (_%tl9017990198%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd-rest9017490181%_))))
                                    (let* ((_%val90201%_ _%hd9017890196%_)
                                           (_%rest90203%_ _%tl9017990198%_))
                                      (declare (not safe))
                                      (_%K9017790193%_
                                       _%rest90203%_
                                       _%val90201%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%E9017690185%_)))))
                          (if (eq? _%hd90172%_ '#!key)
                              (let ()
                                (let* ((_%hd-rest9020590212%_ _%hd-rest90171%_)
                                       (_%E9020790216%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%hd-rest9020590212%_
                                                 '([val . rest]))
                                          '#!void))
                                       (_%K9020890222%_
                                        (lambda (_%rest90219%_ _%val90220%_)
                                          (if _%args90150%_
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##set-cdr!
                                                   _%tail90151%_
                                                   _%hd-rest90171%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp90147%_
                                                   _%rest90219%_
                                                   _%args90150%_
                                                   _%hd-rest90171%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%lp90147%_
                                                 _%rest90219%_
                                                 _%hd-rest90171%_
                                                 _%hd-rest90171%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%hd-rest9020590212%_))
                                      (let ((_%hd9020990225%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%hd-rest9020590212%_)))
                                            (_%tl9021090227%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%hd-rest9020590212%_))))
                                        (let* ((_%val90230%_ _%hd9020990225%_)
                                               (_%rest90232%_
                                                _%tl9021090227%_))
                                          (declare (not safe))
                                          (_%K9020890222%_
                                           _%rest90232%_
                                           _%val90230%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E9020790216%_)))))
                              (if (eq? _%hd90172%_ '#!rest)
                                  (let ()
                                    (if _%args90150%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90151%_
                                             _%hd-rest90171%_))
                                          (let ((__tmp90419
                                                 (cons _%keys90145%_
                                                       _%args90150%_)))
                                            (declare (not safe))
                                            (##apply _%K90142%_ __tmp90419)))
                                        (let ((__tmp90420
                                               (cons _%keys90145%_
                                                     _%hd-rest90171%_)))
                                          (declare (not safe))
                                          (##apply _%K90142%_ __tmp90420))))
                                  (let ()
                                    (if _%args90150%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90151%_
                                             _%rest90149%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp90147%_
                                             _%hd-rest90171%_
                                             _%args90150%_
                                             _%rest90149%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp90147%_
                                           _%hd-rest90171%_
                                           _%rest90149%_
                                           _%rest90149%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9015290160%_))
                  (let ((_%hd9015790239%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9015290160%_)))
                        (_%tl9015890241%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9015290160%_))))
                    (let* ((_%hd90244%_ _%hd9015790239%_)
                           (_%hd-rest90246%_ _%tl9015890241%_))
                      (declare (not safe))
                      (_%K9015690236%_ _%hd-rest90246%_ _%hd90244%_)))
                  (let () (declare (not safe)) (_%else9015490168%_))))))))
    (define keyword-rest
      (lambda (_%kwt90133%_ . _%drop90134%_)
        (let ((_%rest90136%_ '()))
          (let ((__tmp90421
                 (lambda (_%k90138%_ _%v90139%_)
                   (if (memq _%k90138%_ _%drop90134%_)
                       '#!void
                       (set! _%rest90136%_
                             (let ((__tmp90422
                                    (let ()
                                      (declare (not safe))
                                      (cons _%v90139%_ _%rest90136%_))))
                               (declare (not safe))
                               (cons _%k90138%_ __tmp90422)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90133%_ __tmp90421))
          _%rest90136%_)))))

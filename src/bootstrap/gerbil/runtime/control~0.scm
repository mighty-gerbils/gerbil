(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712084994)
  (begin
    (define make-promise
      (lambda (_%thunk90308%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90308%_))
              (let ()
                (let ((_%thunk90312%_ _%thunk90308%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-promise _%thunk90312%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk90308%_)))))
    (define __make-promise
      (lambda (_%thunk90296%_)
        (let ()
          (let ((_%thunk90299%_ _%thunk90296%_))
            (let ()
              (let ()
                (declare (not safe))
                (##make-delay-promise _%thunk90299%_)))))))
    (define call-with-parameters
      (lambda (_%thunk90281%_ . _%rest90282%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90281%_))
              (let ()
                (let ((_%thunk90286%_ _%thunk90281%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __call-with-parameters
                               _%thunk90286%_
                               _%rest90282%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk90281%_)))))
    (define __call-with-parameters
      (lambda (_%thunk90219%_ . _%rest90220%_)
        (let ()
          (let ((_%thunk90223%_ _%thunk90219%_))
            (let ()
              (let* ((_%rest9023190242%_ _%rest90220%_)
                     (_%E9023490246%_
                      (lambda ()
                        (error '"No clause matching"
                               _%rest9023190242%_
                               '([param val . rest])
                               '([]))
                        '#!void)))
                (let ((_%K9023690262%_
                       (lambda (_%rest90257%_ _%val90258%_ _%param90259%_)
                         (let ((__tmp90334
                                (if (let ()
                                      (declare (not safe))
                                      (null? _%rest90257%_))
                                    _%thunk90223%_
                                    (lambda ()
                                      (apply call-with-parameters
                                             _%thunk90223%_
                                             _%rest90257%_)))))
                           (declare (not safe))
                           (##parameterize1
                            _%param90259%_
                            _%val90258%_
                            __tmp90334))))
                      (_%K9023590251%_
                       (lambda ()
                         (let () (declare (not safe)) (_%thunk90223%_)))))
                  (let ((_%try-match9023390254%_
                         (lambda ()
                           (if (let ()
                                 (declare (not safe))
                                 (##null? _%rest9023190242%_))
                               (let () (declare (not safe)) (_%thunk90223%_))
                               (let ()
                                 (declare (not safe))
                                 (_%E9023490246%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest9023190242%_))
                        (let ((_%tl9023890267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest9023190242%_)))
                              (_%hd9023790265%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest9023190242%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%tl9023890267%_))
                              (let ((_%tl9024090274%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%tl9023890267%_)))
                                    (_%hd9023990272%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%tl9023890267%_))))
                                (let ((_%param90270%_ _%hd9023790265%_)
                                      (_%val90277%_ _%hd9023990272%_)
                                      (_%rest90279%_ _%tl9024090274%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K9023690262%_
                                     _%rest90279%_
                                     _%val90277%_
                                     _%param90270%_))))
                              (let () (declare (not safe)) (_%E9023490246%_))))
                        (let ()
                          (declare (not safe))
                          (_%try-match9023390254%_)))))))))))
    (define with-unwind-protect
      (lambda (_%K90194%_ _%fini90195%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%K90194%_))
              (let ()
                (let ((_%K90199%_ _%K90194%_))
                  (if (let () (declare (not safe)) (procedure? _%fini90195%_))
                      (let ()
                        (let ((_%fini90209%_ _%fini90195%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-unwind-protect
                               _%K90199%_
                               _%fini90209%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                       'contract:
                       'procedure?
                       'value:
                       _%fini90195%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K90194%_)))))
    (define __with-unwind-protect
      (lambda (_%K90168%_ _%fini90169%_)
        (let ()
          (let ((_%K90172%_ _%K90168%_))
            (let ((_%fini90181%_ _%fini90169%_))
              (let ()
                (let* ((_%once90190%_ '#f)
                       (__tmp90335
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (if _%once90190%_
                              (error '"Cannot re-enter unwind protected block")
                              (set! _%once90190%_ '#t)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp90335 _%K90172%_ _%fini90181%_))))))))
    (define keyword-dispatch
      (lambda (_%kwt90061%_ _%K90062%_ . _%all-args90063%_)
        (if _%kwt90061%_
            (if (let () (declare (not safe)) (vector? _%kwt90061%_))
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90061%_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _%K90062%_))
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90062%_))
        (let ((_%keys90065%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90067%_ ((_%rest90069%_ _%all-args90063%_)
                            (_%args90070%_ '#f)
                            (_%tail90071%_ '#f))
            (let* ((_%rest9007290080%_ _%rest90069%_)
                   (_%else9007490088%_
                    (lambda ()
                      (if _%args90070%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90071%_ '()))
                            (let ((__tmp90336
                                   (cons _%keys90065%_ _%args90070%_)))
                              (declare (not safe))
                              (##apply _%K90062%_ __tmp90336)))
                          (_%K90062%_ _%keys90065%_))))
                   (_%K9007690156%_
                    (lambda (_%hd-rest90091%_ _%hd90092%_)
                      (if (let () (declare (not safe)) (keyword? _%hd90092%_))
                          (let ()
                            (let* ((_%hd-rest9009490101%_ _%hd-rest90091%_)
                                   (_%E9009690105%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%hd-rest9009490101%_
                                             '([val . rest]))
                                      '#!void))
                                   (_%K9009790113%_
                                    (lambda (_%rest90108%_ _%val90109%_)
                                      (if _%kwt90061%_
                                          (let ((_%pos90111%_
                                                 (let ((__tmp90338
                                                        (keyword-hash
                                                         _%hd90092%_))
                                                       (__tmp90337
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-length
                                                           _%kwt90061%_))))
                                                   (declare (not safe))
                                                   (##fxmodulo
                                                    __tmp90338
                                                    __tmp90337))))
                                            (if (eq? _%hd90092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%kwt90061%_
                                                        _%pos90111%_)))
                                                '#!void
                                                (error '"Unexpected keyword argument"
                                                       _%K90062%_
                                                       _%hd90092%_)))
                                          '#!void)
                                      (if (eq? (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%keys90065%_
                                                  _%hd90092%_
                                                  absent-value))
                                               absent-value)
                                          '#!void
                                          (error '"Duplicate keyword argument"
                                                 _%K90062%_
                                                 _%hd90092%_))
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%keys90065%_
                                         _%hd90092%_
                                         _%val90109%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp90067%_
                                         _%rest90108%_
                                         _%args90070%_
                                         _%tail90071%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd-rest9009490101%_))
                                  (let ((_%hd9009890116%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd-rest9009490101%_)))
                                        (_%tl9009990118%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd-rest9009490101%_))))
                                    (let* ((_%val90121%_ _%hd9009890116%_)
                                           (_%rest90123%_ _%tl9009990118%_))
                                      (declare (not safe))
                                      (_%K9009790113%_
                                       _%rest90123%_
                                       _%val90121%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%E9009690105%_)))))
                          (if (eq? _%hd90092%_ '#!key)
                              (let ()
                                (let* ((_%hd-rest9012590132%_ _%hd-rest90091%_)
                                       (_%E9012790136%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%hd-rest9012590132%_
                                                 '([val . rest]))
                                          '#!void))
                                       (_%K9012890142%_
                                        (lambda (_%rest90139%_ _%val90140%_)
                                          (if _%args90070%_
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##set-cdr!
                                                   _%tail90071%_
                                                   _%hd-rest90091%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp90067%_
                                                   _%rest90139%_
                                                   _%args90070%_
                                                   _%hd-rest90091%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%lp90067%_
                                                 _%rest90139%_
                                                 _%hd-rest90091%_
                                                 _%hd-rest90091%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%hd-rest9012590132%_))
                                      (let ((_%hd9012990145%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%hd-rest9012590132%_)))
                                            (_%tl9013090147%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%hd-rest9012590132%_))))
                                        (let* ((_%val90150%_ _%hd9012990145%_)
                                               (_%rest90152%_
                                                _%tl9013090147%_))
                                          (declare (not safe))
                                          (_%K9012890142%_
                                           _%rest90152%_
                                           _%val90150%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E9012790136%_)))))
                              (if (eq? _%hd90092%_ '#!rest)
                                  (let ()
                                    (if _%args90070%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90071%_
                                             _%hd-rest90091%_))
                                          (let ((__tmp90339
                                                 (cons _%keys90065%_
                                                       _%args90070%_)))
                                            (declare (not safe))
                                            (##apply _%K90062%_ __tmp90339)))
                                        (let ((__tmp90340
                                               (cons _%keys90065%_
                                                     _%hd-rest90091%_)))
                                          (declare (not safe))
                                          (##apply _%K90062%_ __tmp90340))))
                                  (let ()
                                    (if _%args90070%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90071%_
                                             _%rest90069%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp90067%_
                                             _%hd-rest90091%_
                                             _%args90070%_
                                             _%rest90069%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp90067%_
                                           _%hd-rest90091%_
                                           _%rest90069%_
                                           _%rest90069%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9007290080%_))
                  (let ((_%hd9007790159%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9007290080%_)))
                        (_%tl9007890161%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9007290080%_))))
                    (let* ((_%hd90164%_ _%hd9007790159%_)
                           (_%hd-rest90166%_ _%tl9007890161%_))
                      (declare (not safe))
                      (_%K9007690156%_ _%hd-rest90166%_ _%hd90164%_)))
                  (let () (declare (not safe)) (_%else9007490088%_))))))))
    (define keyword-rest
      (lambda (_%kwt90053%_ . _%drop90054%_)
        (let ((_%rest90056%_ '()))
          (let ((__tmp90341
                 (lambda (_%k90058%_ _%v90059%_)
                   (if (memq _%k90058%_ _%drop90054%_)
                       '#!void
                       (set! _%rest90056%_
                             (let ((__tmp90342
                                    (let ()
                                      (declare (not safe))
                                      (cons _%v90059%_ _%rest90056%_))))
                               (declare (not safe))
                               (cons _%k90058%_ __tmp90342)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90053%_ __tmp90341))
          _%rest90056%_)))))

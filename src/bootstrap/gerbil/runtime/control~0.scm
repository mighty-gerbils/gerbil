(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1713001406)
  (begin
    (define make-promise
      (lambda (_%thunk92736%_)
        (if (procedure? _%thunk92736%_)
            (let ((_%thunk92740%_ _%thunk92736%_))
              (__make-promise _%thunk92740%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk92736%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk92724%_)
        (let ((_%thunk92727%_ _%thunk92724%_))
          (declare (not safe))
          (##make-delay-promise _%thunk92727%_))))
    (define call-with-parameters
      (lambda (_%thunk92709%_ . _%rest92710%_)
        (if (procedure? _%thunk92709%_)
            (let ((_%thunk92714%_ _%thunk92709%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk92714%_ _%rest92710%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk92709%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk92647%_ . _%rest92648%_)
        (let* ((_%thunk92651%_ _%thunk92647%_)
               (_%rest9265992670%_ _%rest92648%_)
               (_%E9266292674%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9265992670%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9266492690%_
                 (lambda (_%rest92685%_ _%val92686%_ _%param92687%_)
                   (let ((__tmp92762
                          (if (null? _%rest92685%_)
                              _%thunk92651%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk92651%_
                                       _%rest92685%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param92687%_
                      _%val92686%_
                      __tmp92762))))
                (_%K9266392679%_
                 (lambda () (let () (declare (not safe)) (_%thunk92651%_)))))
            (let ((_%try-match9266192682%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9265992670%_))
                         (let () (declare (not safe)) (_%thunk92651%_))
                         (_%E9266292674%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9265992670%_))
                  (let ((_%tl9266692695%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9265992670%_)))
                        (_%hd9266592693%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9265992670%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9266692695%_))
                        (let ((_%tl9266892702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9266692695%_)))
                              (_%hd9266792700%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9266692695%_))))
                          (let ((_%param92698%_ _%hd9266592693%_)
                                (_%val92705%_ _%hd9266792700%_)
                                (_%rest92707%_ _%tl9266892702%_))
                            (_%K9266492690%_
                             _%rest92707%_
                             _%val92705%_
                             _%param92698%_)))
                        (_%E9266292674%_)))
                  (_%try-match9266192682%_)))))))
    (define with-unwind-protect
      (lambda (_%K92622%_ _%fini92623%_)
        (if (procedure? _%K92622%_)
            (let ((_%K92627%_ _%K92622%_))
              (if (procedure? _%fini92623%_)
                  (let ((_%fini92637%_ _%fini92623%_))
                    (__with-unwind-protect _%K92627%_ _%fini92637%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini92623%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K92622%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K92596%_ _%fini92597%_)
        (let* ((_%K92600%_ _%K92596%_)
               (_%fini92609%_ _%fini92597%_)
               (_%once92618%_ '#f)
               (__tmp92763
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once92618%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once92618%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp92763 _%K92600%_ _%fini92609%_))))
    (define keyword-dispatch
      (lambda (_%kwt92489%_ _%K92490%_ . _%all-args92491%_)
        (if _%kwt92489%_
            (if (vector? _%kwt92489%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt92489%_))
            '#!void)
        (if (procedure? _%K92490%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K92490%_))
        (let ((_%keys92493%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp92495%_ ((_%rest92497%_ _%all-args92491%_)
                            (_%args92498%_ '#f)
                            (_%tail92499%_ '#f))
            (let* ((_%rest9250092508%_ _%rest92497%_)
                   (_%else9250292516%_
                    (lambda ()
                      (if _%args92498%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail92499%_ '()))
                            (let ((__tmp92764
                                   (cons _%keys92493%_ _%args92498%_)))
                              (declare (not safe))
                              (##apply _%K92490%_ __tmp92764)))
                          (_%K92490%_ _%keys92493%_))))
                   (_%K9250492584%_
                    (lambda (_%hd-rest92519%_ _%hd92520%_)
                      (if (keyword? _%hd92520%_)
                          (let* ((_%hd-rest9252292529%_ _%hd-rest92519%_)
                                 (_%E9252492533%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9252292529%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9252592541%_
                                  (lambda (_%rest92536%_ _%val92537%_)
                                    (if _%kwt92489%_
                                        (let ((_%pos92539%_
                                               (let ((__tmp92766
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd92520%_)))
                                                     (__tmp92765
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt92489%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp92766
                                                  __tmp92765))))
                                          (if (eq? _%hd92520%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt92489%_
                                                      _%pos92539%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K92490%_
                                                     _%hd92520%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys92493%_
                                                _%hd92520%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K92490%_
                                               _%hd92520%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys92493%_
                                       _%hd92520%_
                                       _%val92537%_))
                                    (_%lp92495%_
                                     _%rest92536%_
                                     _%args92498%_
                                     _%tail92499%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9252292529%_))
                                (let ((_%hd9252692544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9252292529%_)))
                                      (_%tl9252792546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9252292529%_))))
                                  (let* ((_%val92549%_ _%hd9252692544%_)
                                         (_%rest92551%_ _%tl9252792546%_))
                                    (_%K9252592541%_
                                     _%rest92551%_
                                     _%val92549%_)))
                                (_%E9252492533%_)))
                          (if (eq? _%hd92520%_ '#!key)
                              (let* ((_%hd-rest9255392560%_ _%hd-rest92519%_)
                                     (_%E9255592564%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9255392560%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9255692570%_
                                      (lambda (_%rest92567%_ _%val92568%_)
                                        (if _%args92498%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail92499%_
                                                 _%hd-rest92519%_))
                                              (_%lp92495%_
                                               _%rest92567%_
                                               _%args92498%_
                                               _%hd-rest92519%_))
                                            (_%lp92495%_
                                             _%rest92567%_
                                             _%hd-rest92519%_
                                             _%hd-rest92519%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9255392560%_))
                                    (let ((_%hd9255792573%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9255392560%_)))
                                          (_%tl9255892575%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9255392560%_))))
                                      (let* ((_%val92578%_ _%hd9255792573%_)
                                             (_%rest92580%_ _%tl9255892575%_))
                                        (_%K9255692570%_
                                         _%rest92580%_
                                         _%val92578%_)))
                                    (_%E9255592564%_)))
                              (if (eq? _%hd92520%_ '#!rest)
                                  (if _%args92498%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92499%_
                                           _%hd-rest92519%_))
                                        (let ((__tmp92767
                                               (cons _%keys92493%_
                                                     _%args92498%_)))
                                          (declare (not safe))
                                          (##apply _%K92490%_ __tmp92767)))
                                      (let ((__tmp92768
                                             (cons _%keys92493%_
                                                   _%hd-rest92519%_)))
                                        (declare (not safe))
                                        (##apply _%K92490%_ __tmp92768)))
                                  (if _%args92498%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92499%_
                                           _%rest92497%_))
                                        (_%lp92495%_
                                         _%hd-rest92519%_
                                         _%args92498%_
                                         _%rest92497%_))
                                      (_%lp92495%_
                                       _%hd-rest92519%_
                                       _%rest92497%_
                                       _%rest92497%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9250092508%_))
                  (let ((_%hd9250592587%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9250092508%_)))
                        (_%tl9250692589%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9250092508%_))))
                    (let* ((_%hd92592%_ _%hd9250592587%_)
                           (_%hd-rest92594%_ _%tl9250692589%_))
                      (_%K9250492584%_ _%hd-rest92594%_ _%hd92592%_)))
                  (_%else9250292516%_)))))))
    (define keyword-rest
      (lambda (_%kwt92481%_ . _%drop92482%_)
        (let ((_%rest92484%_ '()))
          (let ((__tmp92769
                 (lambda (_%k92486%_ _%v92487%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k92486%_ _%drop92482%_))
                       '#!void
                       (set! _%rest92484%_
                             (cons _%k92486%_
                                   (cons _%v92487%_ _%rest92484%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt92481%_ __tmp92769))
          _%rest92484%_)))))

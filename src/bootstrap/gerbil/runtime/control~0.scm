(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712786277)
  (begin
    (define make-promise
      (lambda (_%thunk92510%_)
        (if (procedure? _%thunk92510%_)
            (let ((_%thunk92514%_ _%thunk92510%_))
              (__make-promise _%thunk92514%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk92510%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk92498%_)
        (let ((_%thunk92501%_ _%thunk92498%_))
          (declare (not safe))
          (##make-delay-promise _%thunk92501%_))))
    (define call-with-parameters
      (lambda (_%thunk92483%_ . _%rest92484%_)
        (if (procedure? _%thunk92483%_)
            (let ((_%thunk92488%_ _%thunk92483%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk92488%_ _%rest92484%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk92483%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk92421%_ . _%rest92422%_)
        (let* ((_%thunk92425%_ _%thunk92421%_)
               (_%rest9243392444%_ _%rest92422%_)
               (_%E9243692448%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9243392444%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9243892464%_
                 (lambda (_%rest92459%_ _%val92460%_ _%param92461%_)
                   (let ((__tmp92536
                          (if (null? _%rest92459%_)
                              _%thunk92425%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk92425%_
                                       _%rest92459%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param92461%_
                      _%val92460%_
                      __tmp92536))))
                (_%K9243792453%_
                 (lambda () (let () (declare (not safe)) (_%thunk92425%_)))))
            (let ((_%try-match9243592456%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9243392444%_))
                         (let () (declare (not safe)) (_%thunk92425%_))
                         (_%E9243692448%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9243392444%_))
                  (let ((_%tl9244092469%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9243392444%_)))
                        (_%hd9243992467%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9243392444%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9244092469%_))
                        (let ((_%tl9244292476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9244092469%_)))
                              (_%hd9244192474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9244092469%_))))
                          (let ((_%param92472%_ _%hd9243992467%_)
                                (_%val92479%_ _%hd9244192474%_)
                                (_%rest92481%_ _%tl9244292476%_))
                            (_%K9243892464%_
                             _%rest92481%_
                             _%val92479%_
                             _%param92472%_)))
                        (_%E9243692448%_)))
                  (_%try-match9243592456%_)))))))
    (define with-unwind-protect
      (lambda (_%K92396%_ _%fini92397%_)
        (if (procedure? _%K92396%_)
            (let ((_%K92401%_ _%K92396%_))
              (if (procedure? _%fini92397%_)
                  (let ((_%fini92411%_ _%fini92397%_))
                    (__with-unwind-protect _%K92401%_ _%fini92411%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini92397%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K92396%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K92370%_ _%fini92371%_)
        (let* ((_%K92374%_ _%K92370%_)
               (_%fini92383%_ _%fini92371%_)
               (_%once92392%_ '#f)
               (__tmp92537
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once92392%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once92392%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp92537 _%K92374%_ _%fini92383%_))))
    (define keyword-dispatch
      (lambda (_%kwt92263%_ _%K92264%_ . _%all-args92265%_)
        (if _%kwt92263%_
            (if (vector? _%kwt92263%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt92263%_))
            '#!void)
        (if (procedure? _%K92264%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K92264%_))
        (let ((_%keys92267%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp92269%_ ((_%rest92271%_ _%all-args92265%_)
                            (_%args92272%_ '#f)
                            (_%tail92273%_ '#f))
            (let* ((_%rest9227492282%_ _%rest92271%_)
                   (_%else9227692290%_
                    (lambda ()
                      (if _%args92272%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail92273%_ '()))
                            (let ((__tmp92538
                                   (cons _%keys92267%_ _%args92272%_)))
                              (declare (not safe))
                              (##apply _%K92264%_ __tmp92538)))
                          (_%K92264%_ _%keys92267%_))))
                   (_%K9227892358%_
                    (lambda (_%hd-rest92293%_ _%hd92294%_)
                      (if (keyword? _%hd92294%_)
                          (let* ((_%hd-rest9229692303%_ _%hd-rest92293%_)
                                 (_%E9229892307%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9229692303%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9229992315%_
                                  (lambda (_%rest92310%_ _%val92311%_)
                                    (if _%kwt92263%_
                                        (let ((_%pos92313%_
                                               (let ((__tmp92540
                                                      (keyword-hash
                                                       _%hd92294%_))
                                                     (__tmp92539
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt92263%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp92540
                                                  __tmp92539))))
                                          (if (eq? _%hd92294%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt92263%_
                                                      _%pos92313%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K92264%_
                                                     _%hd92294%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys92267%_
                                                _%hd92294%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K92264%_
                                               _%hd92294%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys92267%_
                                       _%hd92294%_
                                       _%val92311%_))
                                    (_%lp92269%_
                                     _%rest92310%_
                                     _%args92272%_
                                     _%tail92273%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9229692303%_))
                                (let ((_%hd9230092318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9229692303%_)))
                                      (_%tl9230192320%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9229692303%_))))
                                  (let* ((_%val92323%_ _%hd9230092318%_)
                                         (_%rest92325%_ _%tl9230192320%_))
                                    (_%K9229992315%_
                                     _%rest92325%_
                                     _%val92323%_)))
                                (_%E9229892307%_)))
                          (if (eq? _%hd92294%_ '#!key)
                              (let* ((_%hd-rest9232792334%_ _%hd-rest92293%_)
                                     (_%E9232992338%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9232792334%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9233092344%_
                                      (lambda (_%rest92341%_ _%val92342%_)
                                        (if _%args92272%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail92273%_
                                                 _%hd-rest92293%_))
                                              (_%lp92269%_
                                               _%rest92341%_
                                               _%args92272%_
                                               _%hd-rest92293%_))
                                            (_%lp92269%_
                                             _%rest92341%_
                                             _%hd-rest92293%_
                                             _%hd-rest92293%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9232792334%_))
                                    (let ((_%hd9233192347%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9232792334%_)))
                                          (_%tl9233292349%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9232792334%_))))
                                      (let* ((_%val92352%_ _%hd9233192347%_)
                                             (_%rest92354%_ _%tl9233292349%_))
                                        (_%K9233092344%_
                                         _%rest92354%_
                                         _%val92352%_)))
                                    (_%E9232992338%_)))
                              (if (eq? _%hd92294%_ '#!rest)
                                  (if _%args92272%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92273%_
                                           _%hd-rest92293%_))
                                        (let ((__tmp92541
                                               (cons _%keys92267%_
                                                     _%args92272%_)))
                                          (declare (not safe))
                                          (##apply _%K92264%_ __tmp92541)))
                                      (let ((__tmp92542
                                             (cons _%keys92267%_
                                                   _%hd-rest92293%_)))
                                        (declare (not safe))
                                        (##apply _%K92264%_ __tmp92542)))
                                  (if _%args92272%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92273%_
                                           _%rest92271%_))
                                        (_%lp92269%_
                                         _%hd-rest92293%_
                                         _%args92272%_
                                         _%rest92271%_))
                                      (_%lp92269%_
                                       _%hd-rest92293%_
                                       _%rest92271%_
                                       _%rest92271%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9227492282%_))
                  (let ((_%hd9227992361%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9227492282%_)))
                        (_%tl9228092363%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9227492282%_))))
                    (let* ((_%hd92366%_ _%hd9227992361%_)
                           (_%hd-rest92368%_ _%tl9228092363%_))
                      (_%K9227892358%_ _%hd-rest92368%_ _%hd92366%_)))
                  (_%else9227692290%_)))))))
    (define keyword-rest
      (lambda (_%kwt92255%_ . _%drop92256%_)
        (let ((_%rest92258%_ '()))
          (let ((__tmp92543
                 (lambda (_%k92260%_ _%v92261%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k92260%_ _%drop92256%_))
                       '#!void
                       (set! _%rest92258%_
                             (cons _%k92260%_
                                   (cons _%v92261%_ _%rest92258%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt92255%_ __tmp92543))
          _%rest92258%_)))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712993614)
  (begin
    (define make-promise
      (lambda (_%thunk92511%_)
        (if (procedure? _%thunk92511%_)
            (let ((_%thunk92515%_ _%thunk92511%_))
              (__make-promise _%thunk92515%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk92511%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk92499%_)
        (let ((_%thunk92502%_ _%thunk92499%_))
          (declare (not safe))
          (##make-delay-promise _%thunk92502%_))))
    (define call-with-parameters
      (lambda (_%thunk92484%_ . _%rest92485%_)
        (if (procedure? _%thunk92484%_)
            (let ((_%thunk92489%_ _%thunk92484%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk92489%_ _%rest92485%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk92484%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk92422%_ . _%rest92423%_)
        (let* ((_%thunk92426%_ _%thunk92422%_)
               (_%rest9243492445%_ _%rest92423%_)
               (_%E9243792449%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9243492445%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9243992465%_
                 (lambda (_%rest92460%_ _%val92461%_ _%param92462%_)
                   (let ((__tmp92537
                          (if (null? _%rest92460%_)
                              _%thunk92426%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk92426%_
                                       _%rest92460%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param92462%_
                      _%val92461%_
                      __tmp92537))))
                (_%K9243892454%_
                 (lambda () (let () (declare (not safe)) (_%thunk92426%_)))))
            (let ((_%try-match9243692457%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9243492445%_))
                         (let () (declare (not safe)) (_%thunk92426%_))
                         (_%E9243792449%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9243492445%_))
                  (let ((_%tl9244192470%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9243492445%_)))
                        (_%hd9244092468%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9243492445%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9244192470%_))
                        (let ((_%tl9244392477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9244192470%_)))
                              (_%hd9244292475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9244192470%_))))
                          (let ((_%param92473%_ _%hd9244092468%_)
                                (_%val92480%_ _%hd9244292475%_)
                                (_%rest92482%_ _%tl9244392477%_))
                            (_%K9243992465%_
                             _%rest92482%_
                             _%val92480%_
                             _%param92473%_)))
                        (_%E9243792449%_)))
                  (_%try-match9243692457%_)))))))
    (define with-unwind-protect
      (lambda (_%K92397%_ _%fini92398%_)
        (if (procedure? _%K92397%_)
            (let ((_%K92402%_ _%K92397%_))
              (if (procedure? _%fini92398%_)
                  (let ((_%fini92412%_ _%fini92398%_))
                    (__with-unwind-protect _%K92402%_ _%fini92412%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini92398%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K92397%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K92371%_ _%fini92372%_)
        (let* ((_%K92375%_ _%K92371%_)
               (_%fini92384%_ _%fini92372%_)
               (_%once92393%_ '#f)
               (__tmp92538
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once92393%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once92393%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp92538 _%K92375%_ _%fini92384%_))))
    (define keyword-dispatch
      (lambda (_%kwt92264%_ _%K92265%_ . _%all-args92266%_)
        (if _%kwt92264%_
            (if (vector? _%kwt92264%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt92264%_))
            '#!void)
        (if (procedure? _%K92265%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K92265%_))
        (let ((_%keys92268%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp92270%_ ((_%rest92272%_ _%all-args92266%_)
                            (_%args92273%_ '#f)
                            (_%tail92274%_ '#f))
            (let* ((_%rest9227592283%_ _%rest92272%_)
                   (_%else9227792291%_
                    (lambda ()
                      (if _%args92273%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail92274%_ '()))
                            (let ((__tmp92539
                                   (cons _%keys92268%_ _%args92273%_)))
                              (declare (not safe))
                              (##apply _%K92265%_ __tmp92539)))
                          (_%K92265%_ _%keys92268%_))))
                   (_%K9227992359%_
                    (lambda (_%hd-rest92294%_ _%hd92295%_)
                      (if (keyword? _%hd92295%_)
                          (let* ((_%hd-rest9229792304%_ _%hd-rest92294%_)
                                 (_%E9229992308%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9229792304%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9230092316%_
                                  (lambda (_%rest92311%_ _%val92312%_)
                                    (if _%kwt92264%_
                                        (let ((_%pos92314%_
                                               (let ((__tmp92541
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd92295%_)))
                                                     (__tmp92540
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt92264%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp92541
                                                  __tmp92540))))
                                          (if (eq? _%hd92295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt92264%_
                                                      _%pos92314%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K92265%_
                                                     _%hd92295%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys92268%_
                                                _%hd92295%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K92265%_
                                               _%hd92295%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys92268%_
                                       _%hd92295%_
                                       _%val92312%_))
                                    (_%lp92270%_
                                     _%rest92311%_
                                     _%args92273%_
                                     _%tail92274%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9229792304%_))
                                (let ((_%hd9230192319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9229792304%_)))
                                      (_%tl9230292321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9229792304%_))))
                                  (let* ((_%val92324%_ _%hd9230192319%_)
                                         (_%rest92326%_ _%tl9230292321%_))
                                    (_%K9230092316%_
                                     _%rest92326%_
                                     _%val92324%_)))
                                (_%E9229992308%_)))
                          (if (eq? _%hd92295%_ '#!key)
                              (let* ((_%hd-rest9232892335%_ _%hd-rest92294%_)
                                     (_%E9233092339%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9232892335%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9233192345%_
                                      (lambda (_%rest92342%_ _%val92343%_)
                                        (if _%args92273%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail92274%_
                                                 _%hd-rest92294%_))
                                              (_%lp92270%_
                                               _%rest92342%_
                                               _%args92273%_
                                               _%hd-rest92294%_))
                                            (_%lp92270%_
                                             _%rest92342%_
                                             _%hd-rest92294%_
                                             _%hd-rest92294%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9232892335%_))
                                    (let ((_%hd9233292348%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9232892335%_)))
                                          (_%tl9233392350%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9232892335%_))))
                                      (let* ((_%val92353%_ _%hd9233292348%_)
                                             (_%rest92355%_ _%tl9233392350%_))
                                        (_%K9233192345%_
                                         _%rest92355%_
                                         _%val92353%_)))
                                    (_%E9233092339%_)))
                              (if (eq? _%hd92295%_ '#!rest)
                                  (if _%args92273%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92274%_
                                           _%hd-rest92294%_))
                                        (let ((__tmp92542
                                               (cons _%keys92268%_
                                                     _%args92273%_)))
                                          (declare (not safe))
                                          (##apply _%K92265%_ __tmp92542)))
                                      (let ((__tmp92543
                                             (cons _%keys92268%_
                                                   _%hd-rest92294%_)))
                                        (declare (not safe))
                                        (##apply _%K92265%_ __tmp92543)))
                                  (if _%args92273%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92274%_
                                           _%rest92272%_))
                                        (_%lp92270%_
                                         _%hd-rest92294%_
                                         _%args92273%_
                                         _%rest92272%_))
                                      (_%lp92270%_
                                       _%hd-rest92294%_
                                       _%rest92272%_
                                       _%rest92272%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9227592283%_))
                  (let ((_%hd9228092362%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9227592283%_)))
                        (_%tl9228192364%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9227592283%_))))
                    (let* ((_%hd92367%_ _%hd9228092362%_)
                           (_%hd-rest92369%_ _%tl9228192364%_))
                      (_%K9227992359%_ _%hd-rest92369%_ _%hd92367%_)))
                  (_%else9227792291%_)))))))
    (define keyword-rest
      (lambda (_%kwt92256%_ . _%drop92257%_)
        (let ((_%rest92259%_ '()))
          (let ((__tmp92544
                 (lambda (_%k92261%_ _%v92262%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k92261%_ _%drop92257%_))
                       '#!void
                       (set! _%rest92259%_
                             (cons _%k92261%_
                                   (cons _%v92262%_ _%rest92259%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt92256%_ __tmp92544))
          _%rest92259%_)))))

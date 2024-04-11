(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712823025)
  (begin
    (define make-promise
      (lambda (_%thunk92509%_)
        (if (procedure? _%thunk92509%_)
            (let ((_%thunk92513%_ _%thunk92509%_))
              (__make-promise _%thunk92513%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk92509%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk92497%_)
        (let ((_%thunk92500%_ _%thunk92497%_))
          (declare (not safe))
          (##make-delay-promise _%thunk92500%_))))
    (define call-with-parameters
      (lambda (_%thunk92482%_ . _%rest92483%_)
        (if (procedure? _%thunk92482%_)
            (let ((_%thunk92487%_ _%thunk92482%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk92487%_ _%rest92483%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk92482%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk92420%_ . _%rest92421%_)
        (let* ((_%thunk92424%_ _%thunk92420%_)
               (_%rest9243292443%_ _%rest92421%_)
               (_%E9243592447%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9243292443%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9243792463%_
                 (lambda (_%rest92458%_ _%val92459%_ _%param92460%_)
                   (let ((__tmp92535
                          (if (null? _%rest92458%_)
                              _%thunk92424%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk92424%_
                                       _%rest92458%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param92460%_
                      _%val92459%_
                      __tmp92535))))
                (_%K9243692452%_
                 (lambda () (let () (declare (not safe)) (_%thunk92424%_)))))
            (let ((_%try-match9243492455%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9243292443%_))
                         (let () (declare (not safe)) (_%thunk92424%_))
                         (_%E9243592447%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9243292443%_))
                  (let ((_%tl9243992468%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9243292443%_)))
                        (_%hd9243892466%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9243292443%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9243992468%_))
                        (let ((_%tl9244192475%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9243992468%_)))
                              (_%hd9244092473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9243992468%_))))
                          (let ((_%param92471%_ _%hd9243892466%_)
                                (_%val92478%_ _%hd9244092473%_)
                                (_%rest92480%_ _%tl9244192475%_))
                            (_%K9243792463%_
                             _%rest92480%_
                             _%val92478%_
                             _%param92471%_)))
                        (_%E9243592447%_)))
                  (_%try-match9243492455%_)))))))
    (define with-unwind-protect
      (lambda (_%K92395%_ _%fini92396%_)
        (if (procedure? _%K92395%_)
            (let ((_%K92400%_ _%K92395%_))
              (if (procedure? _%fini92396%_)
                  (let ((_%fini92410%_ _%fini92396%_))
                    (__with-unwind-protect _%K92400%_ _%fini92410%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini92396%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K92395%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K92369%_ _%fini92370%_)
        (let* ((_%K92373%_ _%K92369%_)
               (_%fini92382%_ _%fini92370%_)
               (_%once92391%_ '#f)
               (__tmp92536
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once92391%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once92391%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp92536 _%K92373%_ _%fini92382%_))))
    (define keyword-dispatch
      (lambda (_%kwt92262%_ _%K92263%_ . _%all-args92264%_)
        (if _%kwt92262%_
            (if (vector? _%kwt92262%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt92262%_))
            '#!void)
        (if (procedure? _%K92263%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K92263%_))
        (let ((_%keys92266%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp92268%_ ((_%rest92270%_ _%all-args92264%_)
                            (_%args92271%_ '#f)
                            (_%tail92272%_ '#f))
            (let* ((_%rest9227392281%_ _%rest92270%_)
                   (_%else9227592289%_
                    (lambda ()
                      (if _%args92271%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail92272%_ '()))
                            (let ((__tmp92537
                                   (cons _%keys92266%_ _%args92271%_)))
                              (declare (not safe))
                              (##apply _%K92263%_ __tmp92537)))
                          (_%K92263%_ _%keys92266%_))))
                   (_%K9227792357%_
                    (lambda (_%hd-rest92292%_ _%hd92293%_)
                      (if (keyword? _%hd92293%_)
                          (let* ((_%hd-rest9229592302%_ _%hd-rest92292%_)
                                 (_%E9229792306%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9229592302%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9229892314%_
                                  (lambda (_%rest92309%_ _%val92310%_)
                                    (if _%kwt92262%_
                                        (let ((_%pos92312%_
                                               (let ((__tmp92539
                                                      (keyword-hash
                                                       _%hd92293%_))
                                                     (__tmp92538
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt92262%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp92539
                                                  __tmp92538))))
                                          (if (eq? _%hd92293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt92262%_
                                                      _%pos92312%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K92263%_
                                                     _%hd92293%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys92266%_
                                                _%hd92293%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K92263%_
                                               _%hd92293%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys92266%_
                                       _%hd92293%_
                                       _%val92310%_))
                                    (_%lp92268%_
                                     _%rest92309%_
                                     _%args92271%_
                                     _%tail92272%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9229592302%_))
                                (let ((_%hd9229992317%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9229592302%_)))
                                      (_%tl9230092319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9229592302%_))))
                                  (let* ((_%val92322%_ _%hd9229992317%_)
                                         (_%rest92324%_ _%tl9230092319%_))
                                    (_%K9229892314%_
                                     _%rest92324%_
                                     _%val92322%_)))
                                (_%E9229792306%_)))
                          (if (eq? _%hd92293%_ '#!key)
                              (let* ((_%hd-rest9232692333%_ _%hd-rest92292%_)
                                     (_%E9232892337%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9232692333%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9232992343%_
                                      (lambda (_%rest92340%_ _%val92341%_)
                                        (if _%args92271%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail92272%_
                                                 _%hd-rest92292%_))
                                              (_%lp92268%_
                                               _%rest92340%_
                                               _%args92271%_
                                               _%hd-rest92292%_))
                                            (_%lp92268%_
                                             _%rest92340%_
                                             _%hd-rest92292%_
                                             _%hd-rest92292%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9232692333%_))
                                    (let ((_%hd9233092346%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9232692333%_)))
                                          (_%tl9233192348%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9232692333%_))))
                                      (let* ((_%val92351%_ _%hd9233092346%_)
                                             (_%rest92353%_ _%tl9233192348%_))
                                        (_%K9232992343%_
                                         _%rest92353%_
                                         _%val92351%_)))
                                    (_%E9232892337%_)))
                              (if (eq? _%hd92293%_ '#!rest)
                                  (if _%args92271%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92272%_
                                           _%hd-rest92292%_))
                                        (let ((__tmp92540
                                               (cons _%keys92266%_
                                                     _%args92271%_)))
                                          (declare (not safe))
                                          (##apply _%K92263%_ __tmp92540)))
                                      (let ((__tmp92541
                                             (cons _%keys92266%_
                                                   _%hd-rest92292%_)))
                                        (declare (not safe))
                                        (##apply _%K92263%_ __tmp92541)))
                                  (if _%args92271%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92272%_
                                           _%rest92270%_))
                                        (_%lp92268%_
                                         _%hd-rest92292%_
                                         _%args92271%_
                                         _%rest92270%_))
                                      (_%lp92268%_
                                       _%hd-rest92292%_
                                       _%rest92270%_
                                       _%rest92270%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9227392281%_))
                  (let ((_%hd9227892360%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9227392281%_)))
                        (_%tl9227992362%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9227392281%_))))
                    (let* ((_%hd92365%_ _%hd9227892360%_)
                           (_%hd-rest92367%_ _%tl9227992362%_))
                      (_%K9227792357%_ _%hd-rest92367%_ _%hd92365%_)))
                  (_%else9227592289%_)))))))
    (define keyword-rest
      (lambda (_%kwt92254%_ . _%drop92255%_)
        (let ((_%rest92257%_ '()))
          (let ((__tmp92542
                 (lambda (_%k92259%_ _%v92260%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k92259%_ _%drop92255%_))
                       '#!void
                       (set! _%rest92257%_
                             (cons _%k92259%_
                                   (cons _%v92260%_ _%rest92257%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt92254%_ __tmp92542))
          _%rest92257%_)))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1769384626)
  (begin
    (define make-promise
      (lambda (_%thunk104516%_)
        (if (procedure? _%thunk104516%_)
            (let ((_%thunk104520%_ _%thunk104516%_))
              (__make-promise _%thunk104520%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk104516%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk104504%_)
        (let ((_%thunk104507%_ _%thunk104504%_))
          (declare (not safe))
          (##make-delay-promise _%thunk104507%_))))
    (define make-atomic-promise
      (lambda (_%thunk104490%_)
        (if (procedure? _%thunk104490%_)
            (let ((_%thunk104494%_ _%thunk104490%_))
              (__make-atomic-promise _%thunk104494%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk104490%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk104468%_)
        (let ((_%thunk104471%_ _%thunk104468%_))
          (let ((_%mx104480%_ (make-mutex 'promise))
                (_%inner104481%_ (__make-promise _%thunk104471%_)))
            (__make-promise
             (lambda ()
               (let ((_%once104484%_ (vector '0)))
                 (let ((__tmp104531
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (begin
                            (if (let ((__tmp104532
                                       (let ()
                                         (declare (not safe))
                                         (##vector-cas!
                                          _%once104484%_
                                          '0
                                          '1
                                          '0))))
                                  (declare (not safe))
                                  (##fx= __tmp104532 '0))
                                '#!void
                                (error '"Cannot reenter atomic block"))
                            (mutex-lock! _%mx104480%_))))
                       (__tmp104530
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (##force-out-of-line _%inner104481%_))))
                       (__tmp104529 (lambda () (mutex-unlock! _%mx104480%_))))
                   (declare (not safe))
                   (##dynamic-wind __tmp104531 __tmp104530 __tmp104529)))))))))
    (define call-with-parameters__0
      (lambda (_%thunk104420%_)
        (if (procedure? _%thunk104420%_)
            (let ((_%thunk104424%_ _%thunk104420%_))
              (declare (not safe))
              (_%thunk104424%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk104420%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk104434%_ _%param104435%_ _%val104436%_)
        (if (procedure? _%thunk104434%_)
            (let ((_%thunk104440%_ _%thunk104434%_))
              (declare (not safe))
              (##parameterize1 _%param104435%_ _%val104436%_ _%thunk104440%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk104434%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk104450%_ _%param104451%_ _%val104452%_ . _%rest104453%_)
        (if (procedure? _%thunk104450%_)
            (let ((_%thunk104457%_ _%thunk104450%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk104457%_ _%rest104453%_))
               _%param104451%_
               _%val104452%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk104450%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g104533_
        (let ((_g104534_ (let () (declare (not safe)) (##length _g104533_))))
          (cond ((let () (declare (not safe)) (##fx= _g104534_ 1))
                 (apply call-with-parameters__0 _g104533_))
                ((let () (declare (not safe)) (##fx= _g104534_ 3))
                 (apply call-with-parameters__1 _g104533_))
                ((let () (declare (not safe)) (##fx>= _g104534_ 3))
                 (apply call-with-parameters__2 _g104533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g104533_))))))
    (define with-unwind-protect
      (lambda (_%K104395%_ _%fini104396%_)
        (if (procedure? _%K104395%_)
            (let ((_%K104400%_ _%K104395%_))
              (if (procedure? _%fini104396%_)
                  (let ((_%fini104410%_ _%fini104396%_))
                    (__with-unwind-protect _%K104400%_ _%fini104410%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini104396%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K104395%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K104369%_ _%fini104370%_)
        (let* ((_%K104373%_ _%K104369%_)
               (_%fini104382%_ _%fini104370%_)
               (_%once104391%_ (vector '0))
               (__tmp104535
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp104536
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once104391%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp104536 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp104535 _%K104373%_ _%fini104382%_))))
    (define keyword-dispatch
      (lambda (_%kwt104262%_ _%K104263%_ . _%all-args104264%_)
        (if _%kwt104262%_
            (if (vector? _%kwt104262%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt104262%_))
            '#!void)
        (if (procedure? _%K104263%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K104263%_))
        (let ((_%keys104266%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp104268%_ ((_%rest104270%_ _%all-args104264%_)
                             (_%args104271%_ '#f)
                             (_%tail104272%_ '#f))
            (let* ((_%rest104273104281%_ _%rest104270%_)
                   (_%else104275104289%_
                    (lambda ()
                      (if _%args104271%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail104272%_ '()))
                            (let ((__tmp104537
                                   (cons _%keys104266%_ _%args104271%_)))
                              (declare (not safe))
                              (##apply _%K104263%_ __tmp104537)))
                          (_%K104263%_ _%keys104266%_))))
                   (_%K104277104357%_
                    (lambda (_%hd-rest104292%_ _%hd104293%_)
                      (if (keyword? _%hd104293%_)
                          (let* ((_%hd-rest104295104302%_ _%hd-rest104292%_)
                                 (_%E104297104306%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest104295104302%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K104298104314%_
                                  (lambda (_%rest104309%_ _%val104310%_)
                                    (if _%kwt104262%_
                                        (let ((_%pos104312%_
                                               (let ((__tmp104539
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd104293%_)))
                                                     (__tmp104538
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt104262%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp104539
                                                  __tmp104538))))
                                          (if (eq? _%hd104293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt104262%_
                                                      _%pos104312%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K104263%_
                                                     _%hd104293%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys104266%_
                                                _%hd104293%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K104263%_
                                               _%hd104293%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys104266%_
                                       _%hd104293%_
                                       _%val104310%_))
                                    (_%lp104268%_
                                     _%rest104309%_
                                     _%args104271%_
                                     _%tail104272%_))))
                            (if (pair? _%hd-rest104295104302%_)
                                (let ((_%hd104299104317%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest104295104302%_)))
                                      (_%tl104300104319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest104295104302%_))))
                                  (let* ((_%val104322%_ _%hd104299104317%_)
                                         (_%rest104324%_ _%tl104300104319%_))
                                    (_%K104298104314%_
                                     _%rest104324%_
                                     _%val104322%_)))
                                (_%E104297104306%_)))
                          (if (eq? _%hd104293%_ '#!key)
                              (let* ((_%hd-rest104326104333%_
                                      _%hd-rest104292%_)
                                     (_%E104328104337%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest104326104333%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K104329104343%_
                                      (lambda (_%rest104340%_ _%val104341%_)
                                        (if _%args104271%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail104272%_
                                                 _%hd-rest104292%_))
                                              (_%lp104268%_
                                               _%rest104340%_
                                               _%args104271%_
                                               _%hd-rest104292%_))
                                            (_%lp104268%_
                                             _%rest104340%_
                                             _%hd-rest104292%_
                                             _%hd-rest104292%_)))))
                                (if (pair? _%hd-rest104326104333%_)
                                    (let ((_%hd104330104346%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest104326104333%_)))
                                          (_%tl104331104348%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest104326104333%_))))
                                      (let* ((_%val104351%_ _%hd104330104346%_)
                                             (_%rest104353%_
                                              _%tl104331104348%_))
                                        (_%K104329104343%_
                                         _%rest104353%_
                                         _%val104351%_)))
                                    (_%E104328104337%_)))
                              (if (eq? _%hd104293%_ '#!rest)
                                  (if _%args104271%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail104272%_
                                           _%hd-rest104292%_))
                                        (let ((__tmp104540
                                               (cons _%keys104266%_
                                                     _%args104271%_)))
                                          (declare (not safe))
                                          (##apply _%K104263%_ __tmp104540)))
                                      (let ((__tmp104541
                                             (cons _%keys104266%_
                                                   _%hd-rest104292%_)))
                                        (declare (not safe))
                                        (##apply _%K104263%_ __tmp104541)))
                                  (if _%args104271%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail104272%_
                                           _%rest104270%_))
                                        (_%lp104268%_
                                         _%hd-rest104292%_
                                         _%args104271%_
                                         _%rest104270%_))
                                      (_%lp104268%_
                                       _%hd-rest104292%_
                                       _%rest104270%_
                                       _%rest104270%_))))))))
              (if (pair? _%rest104273104281%_)
                  (let ((_%hd104278104360%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest104273104281%_)))
                        (_%tl104279104362%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest104273104281%_))))
                    (let* ((_%hd104365%_ _%hd104278104360%_)
                           (_%hd-rest104367%_ _%tl104279104362%_))
                      (_%K104277104357%_ _%hd-rest104367%_ _%hd104365%_)))
                  (_%else104275104289%_)))))))
    (define keyword-rest
      (lambda (_%kwt104254%_ . _%drop104255%_)
        (let ((_%rest104257%_ '()))
          (let ((__tmp104542
                 (lambda (_%k104259%_ _%v104260%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k104259%_ _%drop104255%_))
                       '#!void
                       (set! _%rest104257%_
                             (cons _%k104259%_
                                   (cons _%v104260%_ _%rest104257%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt104254%_ __tmp104542))
          _%rest104257%_)))))
